package com.adoptPet.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class AddressUtil {

	 public static Map<String, String> getRequestHeadersInMap(HttpServletRequest request) {

	        Map<String, String> result = new HashMap<>();

	        Enumeration headerNames = request.getHeaderNames();
	        while (headerNames.hasMoreElements()) {
	            String key = (String) headerNames.nextElement();
	            String value = request.getHeader(key);
	            System.out.println(key+":"+value);
	            result.put(key, value);
	        }

	        return result;
	    }
	
	
	 /**
     * 获取访问用户的客户端IP（适用于公网与局域网）.
     * @param request {@code HttpServletRequest request}
     * @return ip字符串
     */
    public static String getIpAddr(final HttpServletRequest request) {
        String ipAddress = request.getHeader("x-forwarded-for");

        if (ipAddress == null || ipAddress.length() == 0
                || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("Proxy-Client-IP");
        }
        if (ipAddress == null || ipAddress.length() == 0
                || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ipAddress == null || ipAddress.length() == 0
                || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getRemoteAddr();

            // 这里主要是获取本机的ip,可有可无  
            if (ipAddress.equals("127.0.0.1")
                    || ipAddress.endsWith("0:0:0:0:0:0:1")) {
                // 根据网卡取本机配置的IP
                InetAddress inet = null;
                try {
                    inet = InetAddress.getLocalHost();
                } catch (UnknownHostException e) {
                    e.printStackTrace();
                }
                ipAddress = inet.getHostAddress();
            }
        }

        //如果通过了多级反向代理的话，X-Forwarded-For的值并不止一个，而是一串IP值，
        //究竟哪个才是真正的用户端的真实IP呢？
        // 答案是取X-Forwarded-For中第一个非unknown的有效IP字符串。
        final String[] arr = ipAddress.split(",");
        for(final String str : arr) {
            if(!"unknown".equalsIgnoreCase(str)) {
                ipAddress = str;
                break;
            }
        }
        return ipAddress;
    }

	public static String getAddressByIP(String ip) throws IOException{
		//URL url = new URL("http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json&ip="+ip);
		URL url = new URL("http://ip.taobao.com/service/getIpInfo.php?ip="+ip);
		URLConnection conn = url.openConnection();
		BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
		String line = null;   
	    StringBuffer result = new StringBuffer();   
	    while((line = reader.readLine()) != null)  
	    {   
	      result.append(line);   
	    }   
	    reader.close(); 
	    System.out.println(new String(result));
	    
		return new String(result);
	}
	
	public static void main(String[] args) throws IOException {
		System.out.println(getAddressByIP("111.197.62.155"));
	}
}
