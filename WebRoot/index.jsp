<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>简易网页爬取系统</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <style>
        *{margin:0;padding:0;}
        html{width:100%;overflow:hidden;}
        body{background:url('img/beijing.jpg')no-repeat center/cover;}
        h1{}
        .box{width:40%;height:480px;margin:200px auto;text-align: center;}
        input{margin:10px 0px ;}
        .btn{width:140px;height:40px;background-color:#ccc;margin: 10px 90px;border:none;outline:none;}
        #url{height:35px;width:360px;}
    </style>
  </head>

 <body> 
    <div class="box">
        <h1>网页简易爬取---张成制作</h1>
        <h2><a href="http://www.wulangwang.top/Boke/">张成博客</a>
        <h2>http://pic.netbian.com/4kmeinv/</h2>
        <form action="source.jsp"method="post"onsubmit="return validator();">
            <input type="text" placeholder="请输入网址：如：http://www.qq.com"name="url" id="url" value="http://pic.netbian.com/4kmeinv/"><br>
        	<input type="submit"class="btn"value="获取网页源码">
        </form>
        <h2>网址已输入：点击或者敲回车都行！</h2>
    </div>
    
    <ul class="bg-bubbles">
    	<li></li>
    	<li></li>
    	<li></li>
    </ul>
    <script type="text/javascript" href="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
    	function validator(){
		    var url =document.getElementById('url').value;
		    //空判断
		    if (url==""||url.length==0) {
		        alert("请输入网址！！！");
		        document.getElementById("url").focus();
		        return false;
		    }
		
		    //合法判断
		    if (url!="" && url.lndexOf("http://")==-1) {
		         alert("请输入正确的网址！！！");
		        document.getElementById("url").focus();
		        return false;
		    }
		    return true;
		}
    </script>
  </body>
</html>