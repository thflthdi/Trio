<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="trio.DButil" %>

<% 
	request.setCharacterEncoding("UTF-8");
	/* int idx = Integer.parseInt(request.getParameter("borNum")) ; */
	int idx = Integer.parseInt(request.getParameter("idx")) ;
	Connection conn = DButil.getMySQLConnection();
	String sql = "delete from board where borNum="+idx;

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.executeUpdate();
	
	DButil.close(pstmt);
	DButil.close(conn);
	
	out.println("<script>");
	out.println("alert('삭제되었습니다.')");
	out.println("location.href='faq.jsp'");
	out.println("</script>");

%>