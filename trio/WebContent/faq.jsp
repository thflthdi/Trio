<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="trio.DButil" %>
<!DOCTYPE html>
<!--[if lte IE 8]> <html class="oldie" lang="en"> <![endif]-->
<!--[if IE 9]> <html class="ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="format-detection" content="telephone=no">
	<title>Trio Restaurant</title>
	<link rel="stylesheet" href="css/fancySelect.css" />
	<link rel="stylesheet" href="css/uniform.css" />
	<link rel="stylesheet" href="css/all.css" />
	<link media="screen" rel="stylesheet" type="text/css" href="css/screen.css" />
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
	<div id="wrapper">
		<div class="wrapper-holder">
			<header id="header">
				<span class="logo"><a href="index.jsp">Trio Restaurant</a></span>
				<ul class="tools-nav tools-nav-mobile">
					<% if(session.getAttribute("userID")==null){ %>
							
							<li class="login"><a href="login.html">Login</a> / <a href="register.html">register</a></li>
							
						<% }else{ %>
							<li class="items"><a href="cart1.jsp">
							<span><%
						   	out.print(session.getAttribute("total"));
							%></span> Items</a></li>
							<li class="login"><a href="myPage.jsp"><% out.print(session.getAttribute("userID")); %></a>
							/<a href="Logout.jsp">Logout</a></li>
						<% } %>
				</ul>
				<div class="bar-holder">
				<a class="menu_trigger" href="menu.jsp">menu</a>
					<nav id="nav">
						<ul>
							<li><a href="menu.jsp">menu</a></li>
							<li><a href="aboutus.jsp">about us</a></li>
							<li><a href="event/event.jsp">event</a></li>
							<li><a href="contact.jsp">contact</a></li>
							<li><a href="faq.jsp">FAQ</a></li>
						</ul>
					</nav>
					<ul class="tools-nav">
						<% if(session.getAttribute("userID")==null){ %>
							
							<li class="login"><a href="login.html">Login</a> / <a href="register.html">register</a></li>
							
						<% }else{ %>
							<li class="items"><a href="cart1.jsp">
							<span><%
						   	out.print(session.getAttribute("total"));
							%></span> Items</a></li>
							<li class="login"><a href="myPage.jsp"><% out.print(session.getAttribute("userID")); %></a>
							/<a href="Logout.jsp">Logout</a></li>
						<% } %>
					</ul>
				</div>
			</header>
			
			<section class="bar">
				<div class="bar-frame">
					<ul class="breadcrumbs">
						<li><a href="index.jsp">Home</a></li>
						<li>faq</li>
					</ul>
				</div>
			</section>
			
			<%
				int total=0;
				Connection conn = DButil.getMySQLConnection();
				String sql = "SELECT count(*) from board";
				PreparedStatement pstmt=conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
			    if(rs.next()){
			    	total=rs.getInt(1);
			    }
			    rs.close();
			    out.print("총 게시물 : "+total+"개");
			    String sqlList= "SELECT borNum,userID,borTitle,hit,borDate from board order by borNum DESC";
			    rs = pstmt.executeQuery(sqlList);
			%>
			    
			<section id="main">
				<div class="top-bar">
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
					  <tr height="5"><td width="5"></td></tr>
					 <tr style="text-align:center;">
					   <td width="5"></td>
					  <td width="164">작성일</td>
					   <td width="379">제목</td>
					   <td width="73">작성자</td>
					   <td width="58">조회수</td>
					   <td width="7"></td>
					  </tr>
					  <tr height="1" bgcolor="#82B5DF"><td colspan="6"></td></tr>
					<%
						if(total==0) {
					%>
						 		<tr align="center" bgcolor="#FFFFFF" height="30">
						 	   <td colspan="6">등록된 글이 없습니다.</td>
						 	  </tr>
					<%
						 	} else {
						 		
							while(rs.next()) {
								int borNum = rs.getInt(1);
								String userID = rs.getString(2);
								String borTitle = rs.getString(3);
								int hit = rs.getInt(4);
								String borDate = rs.getString(5);
								
					%>
					<tr height="25" align="center">
						<td>&nbsp;</td>
						<td align="center"><%=borDate %></td>
						<td align="center"><a OnClick="window.location='faqShow.jsp?idx=<%=borNum %>'"><%=borTitle %></a></td>
						<td align="center"><%=userID %></td>
						
						<td align="center"><%=hit %></td>
						<td>&nbsp;</td>
					</tr>
					  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
					<% 
							}
						} 
					DButil.close(rs);
					DButil.close(pstmt);
					DButil.close(conn);
					
					%>
					 <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
					 </table>
					 
					<table width="100%" cellpadding="0" cellspacing="0" border="0">
					  <tr><td colspan="4" height="5"></td></tr>
					  <tr align="center">
					   <td><a href="faqWrite.jsp"><input type=button value="글쓰기"></a></td>
					  </tr>
					</table>
				</div>
			</section>
		</div>
		
		
		<footer id="footer">
			<div class="footer-holder">
				<div class="footer-frame">
					<div class="footer-content">
						<div class="col-holder">
							<div class="col">
								<div class="heading">
									<h3>About us</h3>
								</div>
								<p>Vero eos et accusamus et iusto dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti</p>
								<p>Quos dolores et quas molestias excepturi sint occaecati cupiditate.</p>
							</div>
							<div class="col">
								<div class="heading">
									<h3>Contact</h3>
								</div>
								<address>
									<p><strong>Elegantic Inc.</strong></p>
									<p>1041 Madison Ave,</p>
									<p>New York</p>
								</address>
								<address>
									<p>(45) 523 565 242</p>
									<p><a href="mailto:office@elegantic.com">office@elegantic.com</a></p>
								</address>
							</div>
							<div class="col col-contact">
								<div class="heading">
									<h3>Follow us</h3>
								</div>
								<ul class="social">
									<li class="facebook"><a href="#">Facebook</a></li>
									<li class="google"><a href="#">Google+</a></li>
									<li class="twitter"><a href="#">Twitter</a></li>
									<li class="pinterest"><a href="#">Pinterest</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="footer-bottom">
						<div class="holder">
							<p>Copyright 2014 Elegantic. All rights reserved.</p>
						</div>
					</div>
				</div>
			</div>
		</footer>	
	</div>
	
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="js/jquery.placeholder.js"></script>
	<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="js/fancySelect.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>