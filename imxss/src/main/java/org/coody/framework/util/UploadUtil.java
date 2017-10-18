package org.coody.framework.util;

import java.awt.Image;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URL;

import javax.imageio.ImageIO;

import org.coody.framework.context.entity.HttpEntity;

import com.ezone.web.util.BaiduHttpUtil;

/**
 * 
 * 2014-09-16
 * 
 * 
 * 
 * @author Coody QQ:644556636 bkkill.com
 * 
 */
public class UploadUtil {



	public static String getSuffix(String fileName) {
		if (StringUtil.isNullOrEmpty(fileName)) {
			return null;
		}
		String[] strs = fileName.split("\\.");
		return strs[strs.length - 1].toLowerCase();
	}


	public static final InputStream byte2Input(byte[] buf) {
		return new ByteArrayInputStream(buf);
	}


	public static String doDown(String url) throws Exception {
		BaiduHttpUtil http=new BaiduHttpUtil();
		HttpEntity entity = http.Get(url);
		if (entity == null || entity.getBye() == null) {
			throw new Exception("图片下载失败");
		}
		try {
			Image srcImg = ImageIO.read(byte2Input(entity.getBye()));
			if (srcImg == null||StringUtil.isNullOrEmpty(System.getProperty("ezone.root"))) {
				throw new Exception("图片下载失败");
			}
			String path = System.getProperty("ezone.root") + "upload";
			path += (new URL(url).getPath());
			FileUtils.makeFileDir(path);
			FileUtils.writeFile(path, GZIPUtils.compress(entity.getBye()));
			return   "/upload"+(new URL(url).getPath());
		} catch (Exception e) {
			throw e;
		}
	}
	

	public static void main(String[] args) {
		try {
			String path = "D:/Java/workspaces/.metadata/.me_tcat85/webapps/ezone/upload/img/2015/11/10/100715335.png";
			while (path.contains("\\")) {
				path = path.replace("/", "/");
			}
			while (path.contains("//")) {
				path = path.replace("//", "/");
			}
			int lastTag=path.lastIndexOf('/');
			if(lastTag==-1){
				return;
			}
			path=path.substring(0,lastTag);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}