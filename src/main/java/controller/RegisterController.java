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

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = (String) request.getParameter("username");
		String userid = (String) request.getParameter("userid");
		String password = (String) request.getParameter("password");
		String repassword = (String) request.getParameter("repassword");
		
		System.out.println(username+""+userid+" "+password+" "+repassword);
		
		if(!password.equals(repassword)) {
			response.sendRedirect("login.jsp?error=password Mis-Matched");
			return;
		}
		if(userid.isEmpty()) {
			response.sendRedirect("login.jsp?error=userid should not be empty");
			return;
		}
		if(password.isEmpty() || repassword.isEmpty()) {
			response.sendRedirect("login.jsp?error=password should not be empty");
			return;
		}
		
		UserPojo u = new UserPojo();
		u.setUsername(username);
		u.setPassword(password);
		u.setUserid(userid);
		String userUUID = UUID.randomUUID().toString();
		Cookie cookie = new Cookie("userUUID",userUUID);
		response.addCookie(cookie);
		cookie.setMaxAge(2592000);
		u.setUserUUID(userUUID);
		try {
			boolean result = Users.insertUsers(u);
			if(result) {
				response.sendRedirect("index.jsp");
				return;
			} else {
				response.sendRedirect("login.jsp?error=try after some time");
				return;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
