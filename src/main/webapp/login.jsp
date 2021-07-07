<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%
	String userid = (String) request.getSession().getAttribute("userid");
	if(userid!=null) {
		response.sendRedirect("index.jsp");
		return;
	} 
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="bootstrap.css">
	<link rel="stylesheet" href="./css/login.css">
	<link rel="stylesheet" href="./css/index.css">
	<title>Home</title>
</head>
<body>
	<nav class="mynav">
        <div class="nav-items">
             <div class="nav-logo">
                 <img src="./images/logo.png" alt="">
                 <a href="index.jsp">Cloud Storage</a>
             </div>
             
             <div class="nav-links">
                 <a href="<%=request.getParameter("name")==null?"login.jsp":"logout" %>"><%=request.getParameter("name")==null?"Login/sign-up":"Logout" %></a>
                 <a href="#"><%=request.getParameter("name")==null?"":request.getParameter("name") %></a>
             </div>
        </div>
     </nav>
		<div class="error">
		<h4><%=request.getParameter("error")==null?"":request.getParameter("error") %></h4>
		</div>
		<div class="form-container">
		
		<div class="form">
		
			<div class="head" class="signup">
				<div class="login-tab" onclick="login()" id="check">
					LOGIN
				</div>
				<div class="signup-tab" onclick="register()" id="check2">
					SIGN UP
				</div>
			</div>
			<form class="input-group1" id="login" action="loginservlet" method="post">
				<div class="pic">
				<i class="user"></i>
				<input type="text" class="input-field" id="users" placeholder="UserId"  name="userid" required>
				</div>
				<div class="pic">
				<i class="pass"></i>		
				<input type="password" class="input-field" placeholder="Your Password" name="password" required>
				</div>
				<div class="pic">
				<input type="checkbox" class="check-box"><span>Remember Password</span>
			   </div>
				<input type="submit" value="Login" class="submit-btn">
			</form>
			<form class="input-group" id="register" action="RegisterController" method="post">
			<div class="pic">
				<i class="add"></i>
				<input type="text" class="input-field" placeholder="Enter Name" name="username" required>
			</div>
			<div class="pic">
				<i class="user"></i>
				<input type="text" class="input-field" placeholder="Enter UserId" name="userid" required>
			</div>
			<div class="pic">
				<i class="pass"></i>
				<input type="password" class="input-field" placeholder="Password" name="password" required>
			</div>
			<div class="pic">
				<i class="pass"></i>
				<input type="password" class="input-field" placeholder="Confirm Password" name="repassword" required>
			</div>
			<div class="pic">
				<input type="checkbox" class="check-box"><span>I Agree to Terms & Conditions</span>
			</div>
				<input type="submit" id="register-submit" value="Register" class="submit-btn">
			</form>
		</div>
	</div>
	
	
<script src="./js/login.js" type="text/javascript"></script>
</body>
</html>>