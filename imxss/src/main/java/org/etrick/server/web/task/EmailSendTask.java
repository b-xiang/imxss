package org.etrick.server.web.task;

import java.util.List;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.LogHead;
import org.etrick.server.handle.thread.ThreadBlockHandle;
import org.etrick.server.web.domain.EmailQueue;
import org.etrick.server.web.service.EmailService;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class EmailSendTask {

	@Resource
	EmailService emailService;
	
	
	@Scheduled(cron="0/2 * * * * ? ")
	@LogHead("发送邮件队列")
	public synchronized void sendEmailTask(){
		List<EmailQueue> queues=emailService.getEmailQueues();
		if(queues==null){
			return;
		}
		ThreadBlockHandle handle=new ThreadBlockHandle();
		for(EmailQueue queue:queues){
			try {
				Runnable runn=new Runnable() {
					@Override
					public void run() {
						emailService.sendEmail(queue);
					}
				};
				handle.pushTask(runn);
			} catch (Exception e) {
			}
		}
		handle.execute();
	}
	
	@Scheduled(cron="0 0/1 * * * ? ")
	@LogHead("处理过期的邮件")
	public synchronized void updateErrorEmailTask(){
		emailService.updateErrorEmailTask();
	}
}
