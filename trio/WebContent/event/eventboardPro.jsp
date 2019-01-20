<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import ="trio.DButil" %>

<% 
	request.setCharacterEncoding("euc-kr");
	int num=0;
	Date date = new Date();
	String userId = request.getParameter("userID");
	String eventtext = request.getParameter("eventText");

	
	
	Connection conn = DButil.getMySQLConnection();
	String sql = "insert into event values (?,?,?,curdate())";
		
	PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1,num);
		pstmt.setString(2, userId);
		pstmt.setString(3, eventtext);
		pstmt.executeUpdate();
		
		
		DButil.close(pstmt);
		DButil.close(conn);
		
		
		out.println("<script>");
		out.println("location.href='eventboard.jsp'");
		out.println("</script>");         


%>