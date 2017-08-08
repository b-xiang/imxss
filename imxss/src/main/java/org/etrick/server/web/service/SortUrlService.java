package org.etrick.server.web.service;

import java.util.Map;

import org.etrick.server.comm.annotation.CacheWrite;
import org.etrick.server.comm.entity.HttpEntity;
import org.etrick.server.comm.util.HttpUtil;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;

@Service
public class SortUrlService {

	

	@CacheWrite(fields="url",validTime=72000)
	public String getSortUrl(String url) {
		try {
			HttpEntity entity = HttpUtil
					.Get("http://api.t.sina.com.cn/short_url/shorten.json?source=3213676317&url_long="
							+ url);
			String html = entity.getHtml().replace("[", "").replace("]", "");
			Map<String, Object> jsonMap = JSON.parseObject(html, new TypeReference<Map<String, Object>>() {
			});
			String sortUrl = jsonMap.get("url_short").toString();
			sortUrl=sortUrl.replace("http:", "");
			return sortUrl;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
}
