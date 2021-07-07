<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Map,java.util.List,pojo.StoragePojo"
    %>


<%
	request.getRequestDispatcher("AutoLoginServlet").include(request, response);
	String userid = (String) request.getSession().getAttribute("userid");
	if(userid == null) {
		response.sendRedirect("login.jsp");
		return;
	}
%>
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
	 <!-- New Folder Popup -->
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
     </div> <!-- End New Folder Popup -->
     <nav class="mynav">
        <div class="nav-items">
             <div class="nav-logo">
                 <img src="./images/logo.png" alt="">
                 <a href="#">Cloud Storage</a>
             </div>
             <div class="search-bar-container">
                    <div class="search-bar">
                        <span></span><input type="text" name="" id="" size="60" placeholder="Search in Drive">
                    </div>
                </div>
             <div class="nav-links">
                 <a href="<%=request.getAttribute("username")==null?"login.jsp":"logout" %>"><%=request.getAttribute("username")==null?"Login/sign-up":"Logout" %></a>
                 <a href="#" style="cursor:default"><%=request.getAttribute("username")==null?"":request.getAttribute("username") %></a>
             </div>
        </div>
     </nav>
 
      <!-- main -->
        <div class="main"> 
            <!-- main left division -->
            <div class="col-1">
                <!-- operations links -->
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
                </div> <!-- End operations links -->
                
                <!-- storage section links -->
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
                </div> <!-- End storage section links -->

            </div> <!-- End main left division -->

            <!-- main right division-1 -->
            <div class="col-2">
                <!-- my drive section -->
                <%
                Map<String,List<StoragePojo>> alldatas = (Map<String,List<StoragePojo>>) request.getAttribute("alldatas");

            	List<StoragePojo> folders = alldatas.get("folder");
            	List<StoragePojo> files = alldatas.get("file");
                %>
                <div class="row-1-nav">
                   <ul>
             
                       <li><a href="#"><%=folders.isEmpty()?"My Drive":folders.get(0).getNavPath() %> ></a></li>
                    
                   </ul>
                   <hr>
                </div>
              
                <div class="row-2-content">
                    <div class="folder">
                        <p><%=folders.isEmpty()?"":"Folders"%></p>
                        <div class="wrappers">
                        <% 
                   		if(!folders.isEmpty()) {
                   			for(StoragePojo fol:folders) {
                   	
                   		%>
                            <div class="folder-box">
                                <p><%=fol.getFileName() %></p>
                            </div>
                            
                         <%
                   			}
                   		}
                         %>
                        </div>
                    </div>
                    <div class="file">
                        <p><%=files.isEmpty()?"":"Files"%></p>
                        <div class="wrappers">
                        <% 
                        
                   		if(!files.isEmpty()) {
                   			for(StoragePojo fil:files) {
                   	
                   		%>
                            <div class="file-box">
                                <div class="file-img">
                                    <img src="./images/mp_police.png" alt="">
                                </div>
                                <div class="file-name">
                                    <p><%=fil.getFileName() %></p>
                                </div>
                            </div>
                         <%
                   			}
                   		}
                         %>
                        </div>
                    </div>
                </div> <!-- End my drive section -->
                <div class="space">
                        
                </div>
               
            </div> <!-- End main right division-1 -->
            
            <!-- main right division-2 -->
            <div class="col-3">
                <!-- storage section -->
                <div class="row-1-nav">
                    <ul>
                        <li><a href="#">Storage</a></li>
                        <li id="backup-icon"><a href="#" >Backup</a></li>
                    </ul>
                    <hr>
                 </div>
                 <div class="row-1-nav">
                    <ul>
                        <li><a href="#">Name</a></li>
                        <li class="storage-event" id="storage-icon-down" > <a href="javascript:void">Storage Used</a></li>
                    </ul>
                    <hr>
                 </div> <!-- End storage section -->

                 <div class="storage-content">
                     <div class="contents">
                         <p id="type-icon">setup.exe</p>
                         <p>3.14 MB</p>
                     </div>
                     
                 </div>
            </div> <!-- End main right division-2 -->
            
        </div> <!-- main end -->
         
        <script src="./js/jquery.js" ></script>
        <script src="https://kit.fontawesome.com/c271ea17ae.js" crossorigin="anonymous"></script>
        <script src="./js/index.js"></script>
        <script type="text/javascript" src="./js/index_servlet.js"></script>
        
</body>
</html>