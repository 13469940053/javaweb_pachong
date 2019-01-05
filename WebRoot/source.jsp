<%@page import="datadown.util.tmDownutil"%>
<%@ page language="java" import="java.util.*,datadown.util.tmDownutil" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>图片下载</title>
    <meta charset="utf-8">
	<meta name="keywords" content="keyword1,keyword2,keyword3">
	<meta name="description" content="This is my page">
  </head>
 <body style="background:url('img/beijing.jpg')no-repeat center/cover;">
  		<%//01:25
  			//获取用户输入的网址
  			String url = request.getParameter("url");
  			//获取网址源代码
  			String htmlSource=tmDownutil.htmlsourse(url,"gbk");
  			//作用域  jsp 四大作用域   九大隐士对象
  			pageContext.setAttribute("htmlSource",htmlSource);
  		 %>
        <div id="box" style="width:1120px;margin:0 auto; text-algin:center;">
            <h1 style="text-algin:center;">java实现网络图片下载</h1>
            <textarea style="width:1120px;height:460px;overflow:auto;opacity:0.4;"id="source">${htmlSource}</textarea>
        </div>
        <hr>
        <form action="#"  method="post" id="form">
           <!--  <input type="submit" value="下载" style="width:180px;height:35px;"> -->
        </form>
        <hr>
        <div style="height:30px;">
        <h3 >找到的图片一共有<span id="count"></span>张</h3>
        </div>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js" ></script>
        <script>
        	  $(document).ready(function(){
		    	var source =$('#source').val();
		    	//console.log(source);
                var $source =$(source);
               	//console.log($source);
        
		    	 //获取内容图片
				 var i=0;
				 var wz="http://pic.netbian.com";
		    	 $source.find('div').find("img").each(function() {//找到获取代码中的img标签
                    	var src =$(this).attr("src");//找到src路径
                    	console.log(src);			
					 	 if (src !="" && src.length>0) {
							if (src.indexOf("jpg")!=-1||src.indexOf("png")==-1||src.indexOf("gif")!=-1) {
								$("body").append("<div id='x_img' style='float:left; margin: 5px;'><img width='200px' height='120px' src="+wz+src+"></div>");
								$("#form").prepend("<input type='hidden' name='img' value="+wz+src+">");
					 	 	}
					 	 	i++;
					 	 }
                		$("#count").text(i);
                   }); 
              });
        </script>
       
  </body>
</html>
