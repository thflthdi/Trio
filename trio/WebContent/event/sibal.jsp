<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import ="java.sql.*" %>
<%@ page import ="trio.DButil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
			
				<center>
				<table align="center" border="0">
			
				<tr>
					
					<td style="padding:10px;text-align:center;">
					<% if(session.getAttribute("userID")==null) {%> 로그인을 해주세요
					<%}else{out.print(session.getAttribute("userID")); }%>
					</td>
					<input type="hidden" id="userID" name="userID" value=<% out.print(session.getAttribute("userID")); %>>
					<!-- <td style="padding:10px;">
						<input type="text" name="eventText" id="eventText" maxlength="50" style="text-align:center;width:500px; height:100px;" >
					</td> -->
					<td height="100px">
					<textarea id="eventText" name="eventText" maxlength="100" 
					style="resize:none;width:550px;height:100%;overflow:auto;text-align:center"></textarea>
					</td>
					<td style="padding:10px;">
					<input type="submit" value="응원" style="height:100px;width:100px;">
					</td>
				</tr>
				<!-- </table> -->
				</form>
				<%
				Connection conn = DButil.getMySQLConnection();
				String sql2 = "SELECT num,userId,eventtext,date from event";
				PreparedStatement pstmt=conn.prepareStatement(sql2);
				ResultSet rs = pstmt.executeQuery();
				
			    while(rs.next()) {
			    	Integer num1 = rs.getInt(1);
			    	String userId1 = rs.getString(2);
			    	String eventtext1 = rs.getString(3);
			    	String date1 = rs.getString(4);
			    %>
			   
			    <!-- <table align="center" border="0"> -->
			    <tr>
			    	<td style="padding:10px;text-align:center;">
			    	<%=userId1 %> <br> <%=date1 %>
			    	</td>
			    	<td style="font-size:medium;padding:10px;text-align:center;width:550px;">
			    	 <%=eventtext1 %>
			    	</td>
			    	<td style="padding:10px;">
					<input type="submit" value="응원" style="height:100px;width:100px;">
					</td>
					<hr>
			    </tr>
			  
				
				
				<%
			    } 
				%>
				  </table>
				<%
				DButil.close(rs);
				DButil.close(pstmt);
				DButil.close(conn);
				%>
				
				</center>
</body>
</html>