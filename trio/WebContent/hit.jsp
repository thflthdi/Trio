<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import ="trio.DButil" %>

<% 
	request.setCharacterEncoding("euc-kr");
	int idx=Integer.parseInt(request.getParameter("idxx")) ; 
	int hit = Integer.parseInt(request.getParameter("hit1")) ; 
	

	
	Connection conn = DButil.getMySQLConnection();
	String sql = "update board hit=(?) where borNum="+idx;
		
	PreparedStatement pstmt = conn.prepareStatement(sql);
		
	pstmt.setInt(1,hit);
	pstmt.executeUpdate();
		
		DButil.close(pstmt);
		DButil.close(conn);
		
		out.println("<script>");
		out.println("alter('ok')");
		out.println("location.href='faqShow.jsp'");
		out.println("</script>");  


%>