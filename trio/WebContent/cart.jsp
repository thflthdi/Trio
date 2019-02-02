<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="trio.DButil" %>
<% 
	Class.forName("com.mysql.cj.jdbc.Driver"); 
	String url = "jdbc:mysql://localhost:3306/mydb?characterEncoding=UTF-8&serverTimezone=UTC"; 
	String id = "yejin"; 
	String pass = "0503"; 
	int idx = Integer.parseInt(request.getParameter("idx")); 
	try { 
	Connection conn = DriverManager.getConnection(url,id,pass); 
	Statement stmt = conn.createStatement(); 
	String sql = "SELECT foodNum,foodPri,foodName,imgsrc FROM menu WHERE foodNum=" + idx;

	ResultSet rs = stmt.executeQuery(sql); 
	if(rs.next()){ 
		int foodNum = rs.getInt(1);
    	int foodPri = rs.getInt(2);
    	String foodName = rs.getString(3);
    	String imgsrc= rs.getString(4);
    	
	sql = "insert into userFood values("+foodNum+", " +foodPri+",'" +foodName+"','"+imgsrc+"','"+session.getAttribute("userID")+"')"; 
	 stmt.executeUpdate(sql); 
	 rs.close(); 
	 stmt.close(); 
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
	 conn.close(); } 
	}catch(SQLException e) {e.printStackTrace(); }
	response.sendRedirect("cart1.jsp");
	%>
	
	 
<%-- <% 
	request.setCharacterEncoding("UTF-8");	
	int idx = Integer.parseInt(request.getParameter("idx")) ;
	Connection conn = DButil.getMySQLConnection();
	String sql = "SELECT foodNum,foodPri,foodName,imgsrc FROM menu WHERE foodNum=" + idx;
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	 if(rs.next()) {
	    	int foodNum = rs.getInt(1);
	    	int foodPri = rs.getInt(2);
	    	String foodName = rs.getString(3);
	    	String imgsrc= rs.getString(4);
	
/* 	int foodNum1 = Integer.parseInt(request.getParameter("foodNum")) ;
	int foodPri1 = Integer.parseInt(request.getParameter("foodPri")) ;
	String userID1 = request.getParameter("out.print(session.getAttribute('userID'))");
	String foodName1 = request.getParameter("foodName");
	String imgsrc1 = request.getParameter("imgsrc"); */
	
	sql = "insert into userFood values (?,?,?,?,?)";
		
	pstmt = conn.prepareStatement(sql);
	
		pstmt.setInt(1, foodNum);
		pstmt.setInt(2, foodPri);
		pstmt.setString(3, "out.print(session.getAttribute('userID'))");
		pstmt.setString(4, foodName);
		pstmt.setString(5, imgsrc);
		
		pstmt.executeUpdate();
	 }
		DButil.close(pstmt);
		DButil.close(conn);
		
		out.println("<script>");
		out.println("location.href='cart1.jsp'");
		out.println("</script>");


%> --%>