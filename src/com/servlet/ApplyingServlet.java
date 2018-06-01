package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ApplyingServlet extends HttpServlet{
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {  
		request.setCharacterEncoding("utf-8");
		try{
			HttpSession session=request.getSession();
			int wno=(int)session.getAttribute("wno");
			
			int type=Integer.parseInt(request.getParameter("type"));
			SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
			java.util.Date d=format.parse(request.getParameter("date"));
			java.sql.Date date=new java.sql.Date(d.getTime());
			
			format=new SimpleDateFormat("hh:mm");
			d=format.parse(request.getParameter("timeb"));
			java.sql.Time timeb=new java.sql.Time(d.getTime());
			d=format.parse(request.getParameter("timee"));
			java.sql.Time timee=new java.sql.Time(d.getTime());
			float timet=(timee.getTime()-timeb.getTime())/1000/3600;

			String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
			String dbURL="jdbc:sqlserver://localhost:1433;DatabaseName=WorkExtraDB";
			String userName="sa";
			String userPwd="guyuchao";
			Connection dbConn=null;
			dbConn= DriverManager.getConnection(dbURL,userName,userPwd);
			PreparedStatement ps;
			String sql="select pwno from worker where wno=?";
			ps=dbConn.prepareStatement(sql);
			ps.setInt(1, wno);
			
			ResultSet rs=ps.executeQuery();
			rs.next();
			int pwno=rs.getInt("pwno");
			
			
			sql = "insert into extraworkinfo(wno,workdate,wtype,timeb,timee,timet,confirmstatus,confirmwno) values(?,?,?,?,?,?,0,?)";
			ps = dbConn.prepareStatement(sql);
			ps.setInt(1, wno);
			ps.setDate(2, date);
			ps.setInt(3,type);
			ps.setTime(4, timeb);
			ps.setTime(5, timee);
			ps.setFloat(6,timet);
			ps.setInt(7, pwno);
            ps.executeUpdate();
            
            //πÿ±’¡¨Ω”
            ps.close();  
            dbConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		request.getRequestDispatcher("applysavesuccess.jsp").forward(request, response);
	}  
	  
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {  
        doGet(request, response);  
    }  
}
