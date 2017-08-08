/**
 * 
 */
package org.etrick.server.web.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.CacheWrite;
import org.etrick.server.comm.base.BaseLogger;
import org.etrick.server.comm.base.BaseModel;
import org.etrick.server.comm.constant.CacheFinal;
import org.etrick.server.comm.entity.Pager;
import org.etrick.server.comm.entity.Where;
import org.etrick.server.comm.util.EmailSenderUtil;
import org.etrick.server.comm.util.EncryptUtil;
import org.etrick.server.comm.util.PropertUtil;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.cache.LocalCache;
import org.etrick.server.handle.jdbc.JdbcHandle;
import org.etrick.server.web.domain.EmailInfo;
import org.etrick.server.web.domain.EmailQueue;
import org.springframework.stereotype.Service;

/**
 * @author etrick
 * @date 2017年7月11日
 * @blog http://54sb.org
 * @email 644556636@qq.com
 */
@SuppressWarnings("unchecked")
@Service
public class EmailService {

	protected static final BaseLogger logger = BaseLogger.getLogger(EmailService.class);

	@Resource
	JdbcHandle jdbcHandle;

	public List<EmailInfo> loadEmails() {
		String key = CacheFinal.EMAIL_LIST;
		List<EmailInfo> emails = (List<EmailInfo>) LocalCache.getCache(key);
		if (!StringUtil.isNullOrEmpty(emails)) {
			return emails;
		}
		emails = jdbcHandle.findBean(EmailInfo.class);
		if (!StringUtil.isNullOrEmpty(emails)) {
			LocalCache.setCache(key, emails, 600);
		}
		return emails;
	}

	public EmailInfo loadEmailInfo(Integer emailId) {
		return jdbcHandle.findBeanFirst(EmailInfo.class, "id", emailId);
	}

	public Long saveEmailInfo(EmailInfo email) {
		Long code = jdbcHandle.saveOrUpdateAuto(email);
		if (code > 0) {
			LocalCache.delCacheFuzz(CacheFinal.EMAIL_LIST);
		}
		return code;
	}

	public Long delEmailInfo(Integer emailId) {
		String sql = "delete from email_info where id=? limit 1";
		Long code = jdbcHandle.doUpdate(sql, emailId);
		if (code > 0) {
			LocalCache.delCacheFuzz(CacheFinal.EMAIL_LIST);
		}
		return code;
	}

	@CacheWrite(key = CacheFinal.EMAIL_LIST, fields = { "keyWorld", "pager.currPage", "pager.pageSize" }, validTime = 5)
	public Pager loadEmails(Pager pager, String keyWorld) {
		Where where = new Where();
		if (!StringUtil.isNullOrEmpty(keyWorld)) {
			where.set("email", "like", "%" + keyWorld + "%");
		}
		return jdbcHandle.findPager(EmailInfo.class, where, pager, "id", true);
	}

	public boolean sendEmailAuto(String title, String txt, String targeEmail) {
		EmailQueue queue = new EmailQueue();
		queue.setTitle(title);
		queue.setContext(txt);
		queue.setTargeEmail(targeEmail);
		queue.setUnionId(
				EncryptUtil.md5Code(queue.getTitle() + "_" + queue.getContext() + "_" + queue.getTargeEmail()));
		Long code = jdbcHandle.insert(queue);
		if (code != 1) {
			return false;
		}
		return true;
	}

	public void sendEmail(EmailQueue queue) {
		List<EmailInfo> emails = loadEmails();
		emails = PropertUtil.doSeq(emails, "sendNum");
		EmailInfo email = emails.get(0);
		writeEmailSendNum(email.getEmail());
		if (EmailSenderUtil.sendEmail(email.getSmtp().trim(), email.getEmail().trim(), email.getPassword().trim(), queue.getTitle(),
				queue.getContext(), queue.getTargeEmail())) {
			String sql = "update email_queue set status=?,updateTime=? where unionId=?";
			jdbcHandle.doUpdate(sql, 1, new Date(), queue.getUnionId());
			return;
		}
		logger.error("邮件发送失败:"+email+";"+queue);
	}

	public void writeEmailSendNum(String email) {
		List<EmailInfo> emails = loadEmails();
		if (StringUtil.isNullOrEmpty(emails)) {
			return;
		}
		for (EmailInfo emailTmp : emails) {
			if (email.equals(emailTmp.getEmail())) {
				emailTmp.setSendNum(emailTmp.getSendNum() + 1);
				jdbcHandle.doUpdate("update email_info set sendNum=sendNum+1 where email=?", email);
				break;
			}
		}
		LocalCache.setCache(CacheFinal.EMAIL_LIST, emails, 60);
	}

	public void updateErrorEmailTask(){
		String sql="update email_queue set status=-1 where status=0 and millisecond<?";
		jdbcHandle.doUpdate(sql,System.currentTimeMillis() - (1000 * 60 * 1));
	}
	public List<EmailQueue> getEmailQueues(){
		Where where = new Where();
		where.set("status", 0);
		where.set("millisecond", ">", System.currentTimeMillis() - (1000 * 60 * 1));
		Pager pager=new Pager();
				pager.setPageSize(100);
		List<EmailQueue> queues = jdbcHandle.findBean(EmailQueue.class, where,pager);
		return queues;
	}
	
	public Integer sendCode(String email){
		
		
		Integer verCode=StringUtil.getRanDom(1000, 9999);
		String key=CacheFinal.EMAIL_CODE+email;
		VerifcatWrapper wrapper=LocalCache.getCache(key);
		if(wrapper!=null){
			if(new Date().getTime()-wrapper.getSendTime().getTime()<1000*60){
				logger.debug("验证码发送过于频繁:"+email);
				return -1;
			}
		}
		logger.info("发送邮箱验证码："+email+"==>>"+verCode);
		sendEmailAuto("ImXSS验证码", "您的验证码是："+verCode+"(五分钟内有效,情尽快使用)", email);
		logger.info("创建验证码:"+email+"==>>"+verCode);
		wrapper=new VerifcatWrapper();
		wrapper.setSendTime(new Date());
		wrapper.setSendNum(wrapper.getSendNum()+1);
		wrapper.setVerofocatCode(verCode.toString());
		LocalCache.setCache(key, wrapper,60*30);
		return 0;
	}
	
	public boolean checkVerification(String email, String verificatCode) {
		String key=CacheFinal.EMAIL_CODE+email;
		VerifcatWrapper wrapper=LocalCache.getCache(key);
		if(wrapper==null){
			return false;
		}
		if(wrapper.getErrNum()>3){
			LocalCache.delCache(key);
			return false;
		}
		if(!wrapper.getVerofocatCode().equals(verificatCode)){
			wrapper.setErrNum(wrapper.getErrNum()+1);
			LocalCache.setCache(key, wrapper);
			return false;
		}
		return true;
	}
	
	
	
	
	@SuppressWarnings("serial")
	public static class VerifcatWrapper extends BaseModel{
		private String verofocatCode;
		
		private Date sendTime;
		
		private Integer sendNum=0;
		
		private Integer errNum=0;
		
		

		public Integer getErrNum() {
			return errNum;
		}

		public void setErrNum(Integer errNum) {
			this.errNum = errNum;
		}

		public String getVerofocatCode() {
			return verofocatCode;
		}

		public void setVerofocatCode(String verofocatCode) {
			this.verofocatCode = verofocatCode;
		}

		public Date getSendTime() {
			return sendTime;
		}

		public void setSendTime(Date sendTime) {
			this.sendTime = sendTime;
		}

		public Integer getSendNum() {
			return sendNum;
		}

		public void setSendNum(Integer sendNum) {
			this.sendNum = sendNum;
		}
	}
}
