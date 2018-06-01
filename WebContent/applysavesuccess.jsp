<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎进入员工加班管理系统</title>
<style>
body{
		background-image:url(24.jpg);
        background-size:cover;  /* 图片平铺拉伸，适应屏幕 */ 
	
	}
	h1{
		margin:50px auto;
		left:200px;  
        color:black; 
        font-size:300%;
        text-align:center;
	}
</style>
</head>
<body>
	<h1>保存成功</h1>
	<center><p>3秒钟后系统会自动返回...</p></center>
	<%response.setHeader("refresh","3;url=apply.jsp"); %>
</body>
</html>