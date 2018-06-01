<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    request.setAttribute("context", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎来到加班申请系统</title>
<style type="text/css">
	body{
		background:rgba(0,134,139,0.3);
        background-size: cover;  /* 图片平铺拉伸，适应屏幕 */ 
	
	}
 #bg1{
   position:relative;
   top:225px;
   left:250px;
   height:200px;
   width:200px;
   background-image:url(10.jpg);
   background-size: cover;  /* 图片平铺拉伸，适应屏幕 */
   border-top-left-radius:6px;
   border-top-right-radius:6px;   
   }
 #bg2{
   position:relative;
   top:25px;
   left:600px;
   height:200px;
   width:200px;
   background-image:url(11.jpg);
   background-size: cover;  /* 图片平铺拉伸，适应屏幕 */ 
   border-top-left-radius:6px;
   border-top-right-radius:6px;
 }
 #bg3{
   position:relative;
   top:-175px;
   left:950px;
   height:200px;
   width:200px;
   background-image:url(12.jpg);
   background-size: cover;  /* 图片平铺拉伸，适应屏幕 */ 
   border-top-left-radius:6px;
   border-top-right-radius:6px;
  }
  #item1{
  	position:relative;
    top:-175px;
    left:250px;
    height:30px;
    width:200px;
    text-align: center;
    background:rgba(255,255,255,1);
    border-bottom-right-radius:6px;
    border-bottom-left-radius:6px;
  }
  #item2{
  	position:relative;
    top:-205px;
    left:600px;
    height:30px;
    width:200px;
    text-align: center;
    background:rgba(255,255,255,1);
    border-bottom-right-radius:6px;
    border-bottom-left-radius:6px;
  }
  #item3{
  	position:relative;
    top:-235px;
    left:950px;
    height:30px;
    width:200px;
    text-align: center;
    background:rgba(255,255,255,1);
    border-bottom-right-radius:6px;
    border-bottom-left-radius:6px;
  }
  
 a:link {
    	color:#00868B;
    	text-decoration: none;
    }      /* 未访问链接*/  
    a:visited {
    	color:#00868B;
    	text-decoration: none;
    	}   
    a:hover {
    	color:#FF6A6A;
    	text-align:center;
    	text-decoration: none;
    	}   
    a:active {
    	color:#FF6A6A;
    	text-decoration: none;
    }   text-align:center;
}
	
</style>

</head>
<body>
	<div id="bg1"></div>
	<div id="bg2"></div>
	<div id="bg3"></div>
	<div id="item1"><a href="auditServlet">审核申请信息</a></div>
	<div id="item2"><a href="adminSearchServlet">查看所有部门加班结果</a></div>
	<div id="item3"><a href="savesuccess.jsp">生成加班信息统计表</a></div>
</body>
</html>