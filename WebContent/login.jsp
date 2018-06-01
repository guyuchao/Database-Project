<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>加班管理首页</title>
<style type="text/css">
	body{
		background-image:url(26.jpg);
        background-size:100% 800px;  /* 图片平铺拉伸，适应屏幕 */ 
	
	}
	h1{
		margin:50px auto;
		left:200px;  
        color:#FFFFFF; 
        font-size:400%;
        text-align:center;
	}
	h3{
		margin:0px auto;
		left:220px;  
        color:#FFFFFF; 
        text-align:center;
		font-size:200%;
		color:white;
	}
	form{
		width:300px;
		height:220px;
		margin: 80px auto;
	}
	.item{
		margin: 0px auto;
		position:relative;
		left:10px;
		width:40px;
		display:inline-block;
		text-align:left;
		color:white;
	}
	.item1{
		margin:15px auto;
		position:relative;
		left:10px;
		color:white;
		width:100px;
		display:inline-block; 
		text-align:center;
	}
	.item2{
		margin: 0px auto;
		position:relative;
		left:0px;
		width:150px;
		display:inline-block;
		text-align:left;
		color:white;
		background:rgba(0,0,0,0);
		border:none;
		font-size:105%;  
	}
	.item3{
		margin:15px auto;
		position:relative;
		left:1000px;
		color:white;
		width:400px;
		display:inline-block; 
		text-align:center;
		font-style:italic;
		font-size:120%
	}
	
	#bg1{
   	position:relative;
   	top:0px;
   	left:-40px;
   	height:400px;
  	width:400px;
  	background:rgba(0,0,0,0.2);
  	border-radius:10px;  
   }
   #bg2{
   	position:relative;
   	top:0px;
   	left:80px;
   	height:30px;
  	width:250px;
  	background:rgba(255,255,255,0);
  	border:1px solid #97FFFF;
  	border-radius:7px;
   }
   #bg3{
		margin:0px auto;
		position:relative;
		top:-10px;
		left:-10px;
		width:1600px;
		height:50px;
		background:rgba(0,0,0,0.2);
	}
   #bg4{
   	position:relative;
   	top:0px;
   	left:80px;
   	height:30px;
  	width:250px;
  	background:rgba(151,255,255,1);
  	border:0px solid #97FFFF;
  	border-radius:7px;
  	color:#696969;
  	font: italic 1.5em Georgia, serif;
   }
   
  #btn1{
   		position:relative;
   		top:0px;
   		left:100px;
   		height:30px;
  		width:80px;
  		background:rgba(151,255,255,1);
  		border:none;
  		color:#FF6A6A; 
  		border-radius:6px; 
  		font-size:110%;
   }
   #btn2{
   		position:relative;
   		top:0px;
   		left:150px;
   		height:30px;
  		width:80px;
  		background:rgba(151,255,255,1); 
  		border:none; 
  		color:#FF6A6A;
  		border-radius:6px;
  		font-size:110%;
   }
</style>
</head>
<body>
 	<div id="bg3"><span class="item1">Author GYC</span><span class="item3">Welcome!员工加班管理系统</span></div>
	<form action="loginServlet" method="post">
	<div id="bg1">
	<br></br>
	    <h3>Login</h3>
	    <br></br>
	    <div id="bg2">
		<span class="item">姓名:</span>
		<input class="item2" type="text" name="wname"/>
		</div>
		<br></br>
		<div id="bg2">
		<span class="item">密码:</span>
		<input class="item2" type="password" name="password"/>
		</div>
		<br></br>
		<input id="bg4" type="submit" value="login"/>
		<br></br>
		<input id="bg4" type="reset" value="reset"/>
		</div>
		</form>
</body>
</html>