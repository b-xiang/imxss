package org.etrick.server.web.service;

import java.net.InetAddress;
import java.net.URI;
import java.text.MessageFormat;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;

import org.etrick.server.comm.annotation.CacheWipe;
import org.etrick.server.comm.annotation.CacheWrite;
import org.etrick.server.comm.base.BaseLogger;
import org.etrick.server.comm.constant.CacheFinal;
import org.etrick.server.comm.entity.HttpEntity;
import org.etrick.server.comm.util.HttpUtil;
import org.etrick.server.comm.util.PrintException;
import org.etrick.server.comm.util.SpringContextHelper;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.jdbc.JdbcHandle;
import org.etrick.server.handle.thread.IpSearchThreadHandle;
import org.etrick.server.web.domain.AddressInfo;

@Service
public class IpService {
	
	@Resource
	JdbcHandle jdbcHandle;
	
	private static final BaseLogger logger = BaseLogger.getLoggerPro(IpService.class);

	@CacheWrite(key=CacheFinal.SHELL_IP_CACHE ,validTime=60*60*24*30,fields="url")
	public  String getIp(String url){
		try {
			URI uri = new URI(url);
			String domain=uri.getHost();
			InetAddress address = InetAddress.getByName(domain);
			return address.getHostAddress().toString();
		} catch (Exception e) {
			PrintException.printException(logger, e);
		}
		return null;
	}
	
	@CacheWrite(key=CacheFinal.IP_INFO,validTime=7200000,fields="ip")
	public AddressInfo loadIpInfo(String ip){
		try {
			AddressInfo info=jdbcHandle.findBeanFirst(AddressInfo.class,"ip",ip);
			if(info!=null&&!StringUtil.isNullOrEmpty(info.getCountry())){
				return info;
			}
			IpSearchThreadHandle.ipThreadPool.execute(new Runnable() {
				@Override
				public void run() {
					IpService ipService=SpringContextHelper.getBean(IpService.class);
					ipService.loadAddress(ip);
				}
			});
			return info;
		} catch (Exception e) {
			PrintException.printException(logger, e);
			return null;
		}
	}
	@CacheWipe(key=CacheFinal.IP_INFO,fields="ip")
	public void  loadAddress(String ip){
		try {
			AddressInfo info=new AddressInfo();
			info.setIp(ip);
			jdbcHandle.insert(info);
			String url="http://ip.taobao.com/service/getIpInfo.php?ip={0}";
			url=MessageFormat.format(url, ip);
			HttpEntity entity=HttpUtil.Get(url);
			Map<String, Object> jsonMap = JSON.parseObject(entity.getHtml(), new TypeReference<Map<String, Object>>() {
			});
			String dataJson=jsonMap.get("data").toString();
			info=JSON.parseObject(dataJson, AddressInfo.class);
			jdbcHandle.saveOrUpdateAuto(info);
		} catch (Exception e) {
			PrintException.printException(logger, e);
			return;
		}
		
	}
}
