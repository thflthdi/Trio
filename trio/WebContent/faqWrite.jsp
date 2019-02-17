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
	<script>
	function checkz() {
	 if($("#borTitle").val()==""){
			alert("제목을 입력해주세요");
			$("#borTitle").focus();
			return false;
		  }
	 if($("#borContent").val()==""){
			alert("내용을 입력해주세요");
			$("#borContent").focus();
			return false;
		  }
	 if($("#userID").val()=="null"){
			alert("로그인시 작성 가능합니다.");
			return false;
		  }
	 if($session.getAttribute("userID")==null){
			alert("로그인시 작성 가능합니다.");
			return false;
		  }
	}
	</script>
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
							<li><a href="event.jsp">event</a></li>
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
		<form onsubmit="return checkz()" method="post" action="faqWritePro.jsp">
		<center>
		<table cellpadding="0" cellspacing="0" border="0">
		
		<tr style="border-bottom:1px solid #BDBDBD;">
		<td align="center" style="padding:10px;">제목</td>
		<td style="padding:10px;"><input type="title" size="48" maxlength="30" id="borTitle" name="borTitle"></td>
		</tr>
		<tr style="border-bottom:1px solid #BDBDBD;">
		<td align="center" style="padding:10px;">ID</td>
		<td style="padding:10px;text-align:center;">
		<% if(session.getAttribute("userID")==null) {%> 로그인을 해주세요
		<%}else{out.print(session.getAttribute("userID")); }%>
		<input type="hidden" id="userID" name="userID" value=<% out.print(session.getAttribute("userID")); %>>
		<input type="hidden" id="hit" name="hit" value=0>
		</td>
		</tr>
		<tr style="border-bottom:1px solid #BDBDBD;">
		<td align="center" style="padding:10px;" >내용</td>
		<td style="padding:10px;"><textarea id="borContent" name="borContent" cols="50" rows="15" maxlength="500" 
					style="resize:none;overflow:auto;text-align:center"></textarea>
		</td>
		</tr>
		<tr>
		<th></th>
		<th style="padding:10px;" align=center colspan='2'><input type="submit" value="작성"></th>
		</tr>
		</table>
			
		</center>
		</form>
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
									<h3>Contact</h3>
								</div>
								<address>
									<p><strong>Trio restaurant</strong></p>
									<p>Korea</p>
								</address>
								<address>
									<p>010 4334 5174</p>
									<p><a href="mailto:office@elegantic.com">thflthdi@naver.com</a></p>
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
							<p>Thank you</p>
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