<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登陆失败</title>
<style type="text/css">
	body{
		background-image:url(26.jpg);
        background-size: cover;  /* 图片平铺拉伸，适应屏幕 */ 
	
	}
	h1{
		margin:50px auto;
		left:200px;  
        color:#FFFFFF; 
        font-size:200%;
        text-align:center;
	}
</style>

</head>
<body>
	<h1>登录失败，<span><%=request.getAttribute("username") %></span>的用户名或者密码错误！</h1>
	<center><p style="color:white">5秒钟后系统会自动跳转到登录页面...</p></center>
	<%response.setHeader("refresh","5;url=login.jsp");%>
</body>
</html>