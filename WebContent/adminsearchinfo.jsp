<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.bean.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>加班历史信息</title>
<style>
body{
		background-image:url(24.jpg);
        background-size: 100% 800px; 
        
    }
	#bg{
		width:900px;
		margin: 0px auto;
		background:rgba(135,206,250,1);
        background-size: 100% 100%; 
		border-top-right-radius:10px;
        border-top-left-radius:10px;
		border-bottom-right-radius:10px;
        border-bottom-left-radius:10px;
	}
	table {  
      
         border-collapse: collapse;  
      
         font-family: Futura, Arial, sans-serif;  
      
      	 text-align: center;  
      	 
      	 width:800px; 
      	  
       	 margin:15px auto;
    }  
      
    caption {  
      
         font-size: larger;  
      
         margin: 1em auto;  
      
    } 
    th{
    	padding: .65em;
    	color:#FFFFFF;
    	border-bottom: 1px solid #FFFFFF;  
        border-top: 1px solid #FFFFFF; 
        text-align: center;
    } 
      
    td {  
    
    	color:#FFFFFF;
      
         padding: .65em;  
      
         border-bottom: 1px solid #FFFFFF;  
      
         border-top: 1px solid #FFFFFF;
           
         text-align: center;  
      
    } 
   #item1{
  	position:relative;
    top:-10px;
    left:10px;
    height:30px;
    width:200px;
    text-align: center;
    background:rgba(255,255,255,1);
    border-bottom-right-radius:6px;
    border-bottom-left-radius:6px;
  }
  #item2{
  	position:relative;
    top:-40px;
    left:260px;
    height:30px;
    width:200px;
    text-align: center;
    background:rgba(255,255,255,1);
    border-bottom-right-radius:6px;
    border-bottom-left-radius:6px;
  }
  #item3{
  	position:relative;
    top:-70px;
    left:510px;
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
    	text-align:center;
    }   
</style>
</head>
<body>
	<div id="item1"><a href="auditServlet">审核申请信息</a></div>
	<div id="item2"><a href="adminSearchServlet">查看本部门加班结果</a></div>
	<div id="item3"><a href="savesuccess.jsp">生成加班信息统计表</a></div>
<div id="bg">
<br></br>
<table align="center"> 
<% ArrayList<Extraworkinfo> rs=(ArrayList<Extraworkinfo>)request.getAttribute("result"); %> 
        <tr>  
            <th>员工名</th> 
            <th>申请加班日期</th>  
            <th>加班类型</th>
            <th>加班开始时间</th>  
            <th>加班结束时间</th>
            <th>审核状态</th>  
            <th>审核人员工号</th>  
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
    <br></br> 
    </div>
</body>
</html>