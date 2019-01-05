package datadown.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

public class tmDownutil {
	/**
	 * 
	 * @param htmlPath
	 * @param encoding
	 * @return
	 */
	public static String htmlsourse(String htmlPath,String encoding){
		StringBuffer sb =new StringBuffer();//保存源代码  
		//提升变量层级
		BufferedReader breader =null;
		InputStreamReader reader=null;
		try {	
			//建立网络连接  net 包   异常事件【不正常事件】
			URL url =new URL(htmlPath);
			//打开网络连接
			URLConnection uc=url.openConnection();
			
			//文件流    
			InputStream in=uc.getInputStream();
			 reader = new InputStreamReader(in,"utf-8");
			//缓冲
			 breader =new BufferedReader(reader);
			
			//下载临时文件夹
			String temp = "";
			//读取源代码  【拿到所有源码  （用循环）】
			while((temp=breader.readLine()) !=null){
				//System.out.println(temp);
				sb.append(temp+"\n");//保存String Buffer内
			}
		} catch (MalformedURLException e) {
			System.out.println("没网络，请检查网络是否连接！^_^");
			e.printStackTrace();
		} catch (IOException e) {
			System.out.println("网址错误！");
			e.printStackTrace();
		}
		return sb.toString();
	}

	public static void main(String[] args) {	
		String html = htmlsourse("https://miaov.com/index.php/index/index", "utf-8");
		String htmlw = htmlsourse("http://www.qq.com", "utf-8");
		String htmldm = htmlsourse("http://pic.netbian.com/4kdongman/", "utf-8");
		
		System.out.println("获取的代码"+html);
	}
	/*--end--*/
}
