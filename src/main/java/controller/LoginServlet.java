package controller;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Users;
import pojo.UserPojo;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginservlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = (String)request.getParameter("userid");
		String password = (String)request.getParameter("password");
		UserPojo u = new UserPojo();
		u.setUserid(userid);
		u.setPassword(password);
		
		try {
			
			String username = Users.loginUser(u);
			if(username.isEmpty() || username==null) {
				response.sendRedirect("login.jsp?error=Invalid Username and Password");
				return;
			} else {
				String userUUID = UUID.randomUUID().toString();
				System.out.println(userUUID);
				Cookie cookie = new Cookie("userUUID",userUUID);
				response.addCookie(cookie);
				cookie.setMaxAge(2592000);
				boolean result = Users.updateUUID(userUUID, userid);
				request.getSession().setAttribute("userid", userid);
				request.setAttribute("username", username);
				request.getRequestDispatcher("HomeServlet").include(request, response);
				request.getRequestDispatcher("index.jsp").forward(request, response);
				return;
			}
			
		} catch(Exception e) {
			System.out.println(e);
		}
	}

}
