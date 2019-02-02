<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import ="trio.DButil" %>

<% 
	request.setCharacterEncoding("euc-kr");
	int borNum=0;
	int hit = Integer.parseInt(request.getParameter("hit")) ; 
	Date borDate = new Date();
	String borTitle = request.getParameter("borTitle");
	String userID = request.getParameter("userID");
	String borContent = request.getParameter("borContent");

	
	Connection conn = DButil.getMySQLConnection();
	String sql = "insert into board values (?,?,?,?,?,curdate())";
		
	PreparedStatement pstmt = conn.prepareStatement(sql);
		
	pstmt.setInt(1,borNum);
	pstmt.setString(2, userID);
	pstmt.setString(3, borTitle);
	pstmt.setString(4, borContent);
	pstmt.setInt(5,hit);
	pstmt.executeUpdate();
		
		DButil.close(pstmt);
		DButil.close(conn);
		
		out.println("<script>");
		out.println("location.href='faq.jsp'");
		out.println("</script>");  


%>