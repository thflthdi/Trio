<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import ="trio.DButil" %>

<% 
	request.setCharacterEncoding("UTF-8");
	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");	
	String userMail = request.getParameter("userMail");
	String userName = request.getParameter("userName");
	String userYY = request.getParameter("userYY");
	String userMM = request.getParameter("userMM");
	String userDD = request.getParameter("userDD");
	String phoneNum = request.getParameter("phoneNum");
	
	Connection conn = DButil.getMySQLConnection();
	String sql = "insert into user values (?,?,?,?,?,?,?,?)";
		
	PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, phoneNum);
		pstmt.setString(2, userName);
		pstmt.setString(3, userID);
		pstmt.setString(4, userPW);
		pstmt.setString(5, userMail);
		pstmt.setString(6, userYY);
		pstmt.setString(7, userMM);
		pstmt.setString(8, userDD);
		
		pstmt.executeUpdate();
		
		DButil.close(pstmt);
		DButil.close(conn);
		
		pageContext.forward("login.html");


%>