package com.servlet;

import java.io.IOException;
import com.bean.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class auditServlet extends HttpServlet{
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {  
		request.setCharacterEncoding("utf-8");
		try{
			HttpSession session=request.getSession();
			int wno=(int)session.getAttribute("wno");
			ArrayList<Extraworkinfo> info_list=new ArrayList<Extraworkinfo>();
			
			String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
			String dbURL="jdbc:sqlserver://localhost:1433;DatabaseName=WorkExtraDB";
			String userName="sa";
			String userPwd="guyuchao";
			Connection dbConn=null;
			dbConn= DriverManager.getConnection(dbURL,userName,userPwd);
			PreparedStatement ps;
			String sql="select w1.wname 员工名,ex.wtype 加班类型,ex.workdate 申请加班日期,ex.timeb 加班开始时间,ex.timee 加班结束时间,ex.confirmstatus 审核状态,w2.wname 审核人 from extraworkinfo ex, worker w1, worker w2 where w2.wno=? and ex.wno=w1.wno and w1.pwno=w2.wno and ex.confirmstatus=0 order by w1.wname desc";
			ps=dbConn.prepareStatement(sql);
			ps.setInt(1, wno);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Extraworkinfo info=new Extraworkinfo();
				info.setName(rs.getString("员工名"));
				info.setType(rs.getInt("加班类型"));
				info.setDate(rs.getDate("申请加班日期").toString());
				info.setTimeb(rs.getTime("加班开始时间").toString());
				info.setTimee(rs.getTime("加班结束时间").toString());
				if(rs.getBoolean("审核状态")==false){
					info.setConfirmstatus("未通过");
				}
				else{
					info.setConfirmstatus("已通过");
				}
				info.setPname(rs.getString("审核人"));
				info_list.add(info);
			}
			
			request.setAttribute("result", info_list);
			session.setAttribute("result", info_list);
			ps.close();  
	        dbConn.close();
            //关闭连接
            request.getRequestDispatcher("auditinfo.jsp").forward(request, response);
           	
		} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}  
	  
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {  
        doGet(request, response);  
    }  
}
