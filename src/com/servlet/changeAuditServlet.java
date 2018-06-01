package com.servlet;

import java.io.IOException;

import com.bean.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class changeAuditServlet extends HttpServlet{
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {  
		request.setCharacterEncoding("utf-8");
		try{
			HttpSession session=request.getSession();
			ArrayList<Extraworkinfo> info_list=(ArrayList<Extraworkinfo>) session.getAttribute("result");
			
			String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
			String dbURL="jdbc:sqlserver://localhost:1433;DatabaseName=WorkExtraDB";
			String userName="sa";
			String userPwd="guyuchao";
			Connection dbConn=null;
			dbConn= DriverManager.getConnection(dbURL,userName,userPwd);
			PreparedStatement ps;
			String sql="update extraworkinfo set confirmstatus=1 where wno=(select wno from worker where wname=?) and workdate=?";
			//Integer i=0;
			//System.out.println(request.getParameter(i.toString()));
			for(Integer i=0;i<info_list.size();i++){
				if(request.getParameter(i.toString()).equals("ok")){
					ps=dbConn.prepareStatement(sql);
					Extraworkinfo info=info_list.get(i);
					ps.setString(1,info.getName());
					
					SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
					java.util.Date d=format.parse(info.getDate());
					java.sql.Date date=new java.sql.Date(d.getTime());
					ps.setDate(2, date);
					
					ps.executeUpdate();
					ps.close();
				}
			} 
	        dbConn.close();
            //¹Ø±ÕÁ¬½Ó
            request.getRequestDispatcher("auditServlet").forward(request, response);
           	
		} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}  
	  
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {  
        doGet(request, response);  
    }  
}
