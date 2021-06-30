<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/index.css">
    <title>Cloud Storage</title>
</head>
<body>
        <nav class="mynav">
           <div class="nav-items">
                <div class="nav-logo">
                    <img src="./images/logo.png" alt="">
                    <a href="#">Cloud Storage</a>
                </div>
                <div class="nav-links">
                    <a href="<%=request.getParameter("name")==null?"login.jsp":"logout" %>"><%=request.getParameter("name")==null?"Login/sign-up":"Logout" %></a>
                    <a href="#"><%=request.getParameter("name")==null?"":request.getParameter("name") %></a>
                </div>
           </div>
        </nav>
 
        <div>
        	
        </div>

        <footer class="footer">
            <p>&#9400; made by Aditya & Pawan Interprise!</p>
        </footer>
</body>
</html>