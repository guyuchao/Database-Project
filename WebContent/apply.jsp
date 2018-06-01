<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
    request.setAttribute("context", request.getContextPath());
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>加班信息填写</title>
<style type="text/css">
	body {
		background-image:url(24.jpg);
        background-size:100% 800px;  /* 图片平铺拉伸，适应屏幕 */ 
	}
	h1{
		margin:50px;
		text-align: center;
	}
	
	
	#bg1{
		margin:0px auto;
		position:relative;
		top:-10px;
		left:-10px;
		width:1600px;
		height:50px;
		background:rgba(0,134,139,0.5);
	}
	
	#bg2{
		margin:100px auto;
		position:relative;
		top:-10px;
		left:-10px;
		width:400px;
		height:400px;
		background:rgba(0,134,139,0.8);
		border-radius:15px;
	}
	
	#bg3{
   	position:relative;
   	top:0px;
   	left:80px;
   	height:30px;
  	width:250px;
  	background:rgba(255,255,255,0);
  	border:1px solid #FFFFFF;
  	border-radius:7px;
   }
	
	.item{
		margin: 0px auto;
		position:relative;
		left:10px;
		width:80px;
		display:inline-block;
		text-align:left;
		color:white;
	}
	
	.item1{
		margin:15px auto;
		color:red;
		width:100px;
		display:inline-block; 
		text-align:center;
	}
	.item3{
		margin:15px auto;
		position:relative;
		left:1150px;
		color:white;
		width:100px;
		display:inline-block; 
		text-align:center;
		font-style:italic;
		font-size:120%
	}
	
	.item2{
		margin: 0px auto;
		position:relative;
		left:0px;
		width:160px;
		display:inline-block;
		text-align:left;
		color:white;
		background:rgba(0,0,0,0);
		border:none;
		font-size:100%;  
	}
	a:link {
    	color:white;
    	text-decoration: none;
    }      /* 未访问链接*/  
    a:visited {
    	color:white;
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
    	text-align:center;
    }
	 #btn1{
   		position:relative;
   		top:0px;
   		left:-10px;
   		height:30px;
  		width:80px;
  		background:rgba(255,255,255,0);
  		border:1px solid #FFFFFF;
  		color:white; 
  		border-radius:6px; 
  		font-size:100%;
   }
   #btn2{
   		position:relative;
   		top:0px;
   		left:30px;
   		height:30px;
  		width:80px;
  		background:rgba(255,255,255,0); 
  		border:1px solid #FFFFFF; 
  		color:white;
  		border-radius:6px;
  		font-size:100%;
   }
</style>
</head>

<body>
	<div id="bg1">
	<span class="item1"><a href="${context}/apply.jsp">申请加班</a></span>
	<span class="item1"><a href="SearchServlet">申请结果</a></span>
	<span class="item3">Welcome!</span>
	</div>
	<form id="bg2" action="ApplyingServlet" method="post">
	<br></br>	
	<div id="bg3">
		<span class="item">加班类型:</span>
		<span>
		<select class="item2" name="type" class="select1">
		<option value="1">工作日加班</option>
		<option value="2">周末加班</option>
		<option value="3">节假日加班</option>
		</select>
		</span>
		</div>
		<br></br>
		<div id="bg3">
		<span class="item">加班日期:</span><span><input class="item2" type="date" name="date" value="2017-08-19"/></span>
		</div><br></br>
		<div id="bg3">
		<span class="item">开始时间:</span><span><input class="item2" type="time" name="timeb" value="15:00"/></span>
		</div><br></br>
		<div id="bg3">
		<span class="item">结束时间:</span><span><input class="item2" type="time" name="timee" value="16:00" /></span>
		</div>
		<br/><br/>

		<center>
			<input id="btn1" type="submit" value="提交" />
			<input id="btn2" type="reset" value="重置" />
		</center>
	</form>
</body>
</html>