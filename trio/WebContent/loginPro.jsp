<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="trio.DButil" %>

<% 
	request.setCharacterEncoding("UTF-8");
	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");	
/* 	String referer = request.getHeader("referer");
	 if(referer==null)referer = "/";
 */
	Connection conn = DButil.getMySQLConnection();
	String sql = "SELECT * FROM user WHERE userID='" + userID + "' AND userPW='" + userPW + "'";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	Boolean isLogin = false;
    while(rs.next()) {
        // rs.next가 true 라면 = 정보가 있다
        isLogin = true;
    }
    int total=0;
	String sql1 = "SELECT count(*) from userFood where userID='"+userID+"'";
	PreparedStatement pstmt1=conn.prepareStatement(sql1);
	ResultSet rs1 = pstmt1.executeQuery();
    if(rs1.next()){
    	total=rs1.getInt(1);
    }
    rs1.close();
    session.setAttribute("total", total);

	DButil.close(rs);
	DButil.close(pstmt);
	DButil.close(conn);
	%>
<%
	/* if(password.equals(userPW)){
		out.println("<script>");
		out.println("location.href='index.jsp'");
		out.println("</script>");
		
	}
	else{
		out.println("<script>");
		out.println("alert('아이디 혹은 비밀번호가 일치하지 않습니다.')");
		out.println("location.href='login.html'");
		out.println("</script>");

	} */

    // DB에 내가 적은 정보가 있다면
    if(isLogin) {
        // 지금 로그인할 id와 pw를 session에 저장하고
        session.setAttribute("userID", userID); 
        session.setAttribute("userPW", userPW);
        // 첫 페이지로 돌려보낸다
       response.sendRedirect("index.jsp");

    } else {
    	out.println("<script>");
		out.println("alert('아이디 혹은 비밀번호가 일치하지 않습니다.')");
		out.println("location.href='login.html'");
		out.println("</script>");         
    }
%>