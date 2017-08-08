package com.etrick.test;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URLDecoder;

public class JlengthOfLongestSubstring {

	public static void main(String[] args) {
		System.out.println(readFile("/mnt/oxcoder/apache-tomcat-7.0.57/webapps/ROOT/WEB-INF/classes/spring-jdbc.properties","UTF-8"));;
	}
	

	public static void writeAppend(String path, String context, String encode) {
		BufferedWriter out = null;
		try {
			out = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(URLDecoder.decode(path), true)));
			out.write(context);
		} catch (Exception e) {
		} finally {
			try {
				if (out != null) {
					out.close();
				}
			} catch (IOException e) {
			}
		}
	}
	
	public static String readFile(String path, String encode) {
		InputStreamReader read = null;
		FileInputStream in = null;
		BufferedReader bufferedReader = null;
		try {

			File file = new File(URLDecoder.decode(path));
			if (file.isFile() && file.exists()) { // 判断文件是否存在
				in = new FileInputStream(file);
				read = new InputStreamReader(in, encode);// 考虑到编码格式
				bufferedReader = new BufferedReader(read);
				StringBuilder sb = new StringBuilder();
				String line = null;
				while ((line = bufferedReader.readLine()) != null) {
					sb.append(line).append("\r\n");
				}
				return sb.toString();
			}
		} catch (Exception e) {
		} finally {
			try {
				bufferedReader.close();
				read.close();
				in.close();
			} catch (Exception e) {
			}
		}
		return null;
	}
}
