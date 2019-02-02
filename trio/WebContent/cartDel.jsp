<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="trio.DButil" %>

<% 
	request.setCharacterEncoding("UTF-8");
	int idx = Integer.parseInt(request.getParameter("idx")) ;
	
	Connection conn = DButil.getMySQLConnection();
	String sql = "delete from userFood where foodNum="+idx;

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.executeUpdate();
	
	DButil.close(pstmt);
	int total=0;
	String sql1 = "SELECT count(*) from userFood where userID='"+session.getAttribute("userID")+"'";
	PreparedStatement pstmt1=conn.prepareStatement(sql1);
	ResultSet rs1 = pstmt1.executeQuery();
    if(rs1.next()){
    	total=rs1.getInt(1);
    }
    rs1.close();
    session.setAttribute("total", total);

	DButil.close(rs1);
	DButil.close(pstmt1);
	DButil.close(conn);
	
	out.println("<script>");
	out.println("alert('삭제되었습니다.')");
	out.println("location.href='cart1.jsp'");
	out.println("</script>");

%>