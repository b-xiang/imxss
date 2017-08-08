package org.etrick.server.web.service;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.CacheWipe;
import org.etrick.server.comm.annotation.CacheWrite;
import org.etrick.server.comm.constant.CacheFinal;
import org.etrick.server.comm.entity.Pager;
import org.etrick.server.comm.entity.Where;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.jdbc.JdbcHandle;
import org.etrick.server.web.domain.InviteInfo;
import org.springframework.stereotype.Service;

@Service
public class InviteService {

	@Resource
	JdbcHandle jdbcHandle;

	@CacheWrite(key = CacheFinal.INVITE_INFO, validTime = 60, fields = "invite")
	public InviteInfo loadInviteInfo(String invite) {
		return jdbcHandle.findBeanFirst(InviteInfo.class, "inviteCode", invite);
	}

	@CacheWipe(key = CacheFinal.INVITE_INFO, fields = "invite")
	public Long popInvite(String invite) {
		String sql = "update invite_info set status=1 where status=0 and invite=?";
		return jdbcHandle.doUpdate(sql, invite);
	}

	@CacheWipe(key = CacheFinal.INVITE_INFO, fields = "invite")
	public Long pushUserIdToInvite(String invite, Integer userId) {
		String sql = "update invite_info set status=1,userId=? where status=0 and invite=?";
		return jdbcHandle.doUpdate(sql, userId, invite);
	}

	public Long writeInvite(InviteInfo inviteInfo) {
		return jdbcHandle.insert(inviteInfo);
	}

	@CacheWrite(key = CacheFinal.INVITE_LIST, fields = { "userId", "keyWorld", "pager.currPage",
			"pager.pageSize" }, validTime = 2)
	public Pager loadInvites(Pager pager, String keyWorld) {
		Where where = new Where();
		if (!StringUtil.isNullOrEmpty(keyWorld)) {
			where.set("inviteCode", keyWorld);
		}
		return jdbcHandle.findPager(InviteInfo.class, where, pager, "updateTime", true);
	}

}
