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
	<div class="new-folder-popup">
        <div class="popup-container">
            <div class="popup-p-btn">
                <p>New Folder</p>
                <i class="fas fa-times" onclick="closed()"></i>
            </div>
            <div class="popup-text">
                <input type="text" size="40" placeholder="Untitled Folder"/>
            </div>
            <div class="popup-btn">
                <button id="cancel-btn" onclick="closed()">CANCEL</button>
                <button>CREATE</button>
            </div>
        </div>
     </div>
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
 
       <div class="main">
            <div class="col-1">
                <div class="row-1">
                   <div class="m-10 row-links-1 active" onclick="active(this);">
                       <p>My Drive</p>
                   </div>
                   <div class="m-10 row-links-2" onclick="active(this);">
                        <p>New Folder</p>
                    </div>
                    <div class=" m-10 row-links-3" onclick="active(this);">
                        <p>&nbspFile Upload</p>
                    </div>
                    <div class="m-10 row-links-4" onclick="active(this);">
                        <p>Folder Upload</p>
                    </div>
                </div>
                <div class="row-2">
                    <div class="m-10 row-links-5" onclick="active(this);">
                        <p>Storage</p>
                    </div>
                    <div class="bar-container">
                        <div class="bar">
                        </div>
                    </div>
                    <p id="space">369 MB of 15 GB Used</p>
                   <div class="btn-container">
                    <button class="btn">Buy Storage</button>
                   </div>
                </div>
            </div>

            <div class="col-2">
                <div class="row-1">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p> 
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis necessitatibus harum impedit maxime fugit. Ad saepe sequi repellat consectetur perferendis adipisci neque deleniti aspernatur odit? Molestias saepe facilis eum alias.</p>
                </div>
            </div>
        </div>
        <script src="https://kit.fontawesome.com/c271ea17ae.js" crossorigin="anonymous"></script>
        <script src="./js/index.js"></script> 
        
</body>
</html>