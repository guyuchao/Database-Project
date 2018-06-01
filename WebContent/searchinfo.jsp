<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.bean.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
    request.setAttribute("context", request.getContextPath());
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%
    request.setAttribute("context", request.getContextPath());
%>
<title>加班历史信息</title>
<style>
body{
		background-image:url(30.jpg);
        background-size:100% 700px;  /* 图片平铺拉伸，适应屏幕 */ 
	
	}
	#bg1{
		margin:0px auto;
		position:relative;
		top:-10px;
		left:-10px;
		width:1400px;
		height:50px;
		background:rgba(0,134,139,0.5);
	}
	table {  
      
         border-collapse: collapse;  
      
         font-family: Futura, Arial, sans-serif;  
      
      	 text-align: center;  
      	 
      	 width:800px; 
      	  
       	 margin:50px auto;
       	 
       	 position:relative;
       	 
       	 left:150px;
       	 
    }  
      
    caption {  
      
         font-size: larger;  
      
         margin: 1em auto;  
      
    } 
   th{
    	padding: .65em;
    	color:#00868B;
    	border-bottom: 1px solid #ddd;  
        border-top: 1px solid #ddd;  
        text-align: center;
    } 
      
    td {  
    
    	color:#00868B;
      
         padding: .65em;  
      
         border-bottom: 1px solid #ddd;  
      
         border-top: 1px solid #ddd;  
      
         text-align: center;  
      
    }
    .item1{
		margin:15px auto;
		color:red;
		width:100px;
		display:inline-block; 
		text-align:center;
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
</style>
</head>
<body>
<div id="bg1">
<span class="item1"><a href="${context}/apply.jsp">申请加班</a></span>
<span class="item1"><a href="SearchServlet">申请结果</a></span>
</div>
<table align="center"> 
<% ArrayList<Extraworkinfo> rs=(ArrayList<Extraworkinfo>)request.getAttribute("result"); %> 
        <tr>  
            <th>员工名</th> 
            <th>申请加班日期</th>  
            <th>加班类型</th>
            <th>加班开始时间</th>  
            <th>加班结束时间</th>
            <th>审核状态</th>  
            <th>审核人</th>  
        </tr>  
  		<%  
            for(Extraworkinfo info:rs){  
        %>  
        <tr>  
            <td><%=info.getName()%></td>  
            <td><%=info.getDate()%></td>  
            <td><%=info.getType()%></td>
            <td><%=info.getTimeb()%></td>
            <td><%=info.getTimee()%></td>
            <td><%=info.getConfirmstatus()%></td>
            <td><%=info.getPname()%></td>
        </tr>  
        <%  
            }  
        %>  
    </table> 
</body>
</html>