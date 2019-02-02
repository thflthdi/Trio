<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<%@ page import ="java.sql.*" %>
<%@ page import ="trio.DButil" %>
<!DOCTYPE html>
<!--[if lte IE 8]> <html class="oldie" lang="en"> <![endif]-->
<!--[if IE 9]> <html class="ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
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
	<% Class.forName("com.mysql.cj.jdbc.Driver"); 
	String url = "jdbc:mysql://localhost:3306/mydb?characterEncoding=UTF-8&serverTimezone=UTC"; 
	String id = "yejin"; 
	String pass = "0503"; 
	int idx = Integer.parseInt(request.getParameter("idx")); 
	try { Connection conn = DriverManager.getConnection(url,id,pass); 
	Statement stmt = conn.createStatement(); 
	String sql = "SELECT userID, borTitle, borContent, borDate, hit FROM board WHERE borNum=" + idx; 
	ResultSet rs = stmt.executeQuery(sql); 
	if(rs.next()){ 
		String userID = rs.getString(1); 
		String borTitle = rs.getString(2); 
		String borContent = rs.getString(3); 
		String borDate = rs.getString(4); 
		int hit = rs.getInt(5); 
		hit++; 
	%>

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
				<a class="menu_trigger" href="#">menu</a>
				<div class="bar-holder">
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
			<section id="main">
				<div class="top-bar">
				</div>
		<center>
		<table cellpadding="0" cellspacing="0" border="0" style="table-layout:fixed;">
		
		<tr style="border-bottom:1px solid #BDBDBD;">
		<td align="center" style="padding:10px;">제목</td>
		<td style="padding:10px;"><%=borTitle %></td>
		</tr>
		<tr style="border-bottom:1px solid #BDBDBD;">
		<td align="center" style="padding:10px;">ID</td>
		<td style="padding:10px;">
		<%=userID %>
		</td>
		</tr>
		<tr style="border-bottom:1px solid #BDBDBD;">
		<td align="center" style="padding:10px;">날짜</td>
		<td style="padding:10px;">
		<%=borDate %>
		</td>
		</tr>
		<tr style="border-bottom:1px solid #BDBDBD;">
		<td align="center" style="padding:10px;">조회수</td>
		<td style="padding:10px;"><%=hit %>
		</td></tr>
		<tr style="border-bottom:1px solid #BDBDBD;">
		
		<td align="center" style="padding:10px;">내용</td>

		<td style="padding:10px;width:500px;word-break:break-all;word-wrap:break-word;">
		<%=borContent %>
		</td>	
		</tr>
		</table>
		<a OnClick="window.location='faq.jsp'">[목록]</a>
		<% if(session.getAttribute("userID")==null) {
					}else if(session.getAttribute("userID").equals(userID)){ %>
						<a OnClick="window.location='faqDel.jsp?idx=<%=idx%>'">[삭제]</a>
					<% }else{}%>
		
		<% sql = "UPDATE board SET hit=" + hit + " where borNum=" +idx; 
			 stmt.executeUpdate(sql); 
			 rs.close(); 
			 stmt.close(); 
			 conn.close(); } 
			}catch(SQLException e) { } %> 
		<%-- 	<table> 
			<tr> <td> 
			<table width="100%" cellpadding="0" cellspacing="0" border="0"> 
			<tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;"> 
			<td>내 용</td>
			</tr> 
			</table> 
			<table width="413"> 
			<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr> 
			<tr> <td width="0">&nbsp;</td> 
			<td align="center" width="76">조회수</td> 
			<td width="319"><%=hit%></td> 
			<td width="0">&nbsp;</td> </tr> 
			<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr> 
			<tr> <td width="0">&nbsp;</td> <td align="center" width="76">이름</td> 
			<td width="319"><%=userID%></td> <td width="0">&nbsp;</td> </tr> 
			<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr> 
			<tr> <td width="0">&nbsp;</td> <td align="center" width="76">작성일</td> 
			<td width="319"><%=borDate%></td> 
			<td width="0">&nbsp;</td> </tr> <tr height="1" bgcolor="#dddddd">
			<td colspan="4" width="407"></td></tr> <tr> <td width="0">&nbsp;</td> 
			<td align="center" width="76">제목</td> <td width="319"><%=borTitle%></td> 
			<td width="0">&nbsp;</td> </tr> <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
			 <tr> <td width="0"></td> <td width="399" colspan="2" height="200"><%=borContent %> </tr> 
			 <% sql = "UPDATE board SET hit=" + hit + " where borNum=" +idx; 
			 stmt.executeUpdate(sql); 
			 rs.close(); 
			 stmt.close(); 
			 conn.close(); } 
			}catch(SQLException e) { } %> 
			<tr height="1" bgcolor="#dddddd">
			<td colspan="4" width="407"></td></tr> 
			<tr height="1" bgcolor="#82B5DF"><td colspan="4" width="407"></td></tr> 
			<tr align="center"> <td width="0">&nbsp;</td> 
			<td colspan="2" width="399">
			<input type=button value="글쓰기" OnClick="window.location='faqWrite.jsp'"> 
			<input type=button value="답글">
			<input type=button value="목록" OnClick="window.location='faq.jsp'"> 
			<input type=button value="수정"> 
			<input type=button value="삭제" OnClick="window.location='faqDel.jsp'"> 
			<td width="0">&nbsp;</td> 
			</tr> 
			</table> 
			</td> 
			</tr> 
			</table> --%>

		</center>
		
			</section>
		</div>
		
		<br>
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