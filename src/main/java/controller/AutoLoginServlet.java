package controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StorageDao;
import dao.Users;
import global.GlobalData;
import pojo.StoragePojo;
import pojo.UserPojo;

/**
 * Servlet implementation class AutoLoginServlet
 */
@WebServlet("/AutoLoginServlet")
public class AutoLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mycookiename = "userUUID";
		String browsercookie = "";
		Cookie[] cookies = request.getCookies();
		if(cookies == null) {
			request.getSession().setAttribute("userid", null);
			return;
		}
		for(int i=0;i<cookies.length;i++) {
			Cookie c = cookies[i];
			if(mycookiename.equalsIgnoreCase(c.getName())) {
				browsercookie = c.getValue();
			}
		}
		
		try {
			if(browsercookie.isEmpty()) {
				request.getSession().setAttribute("userid", null);
				return;
				
			} 
			UserPojo user = Users.checkForCookies(browsercookie);
			if(user==null) {
				request.getSession().setAttribute("userid", null);
				return;
			} 
			loadData(user.getUserid(),request);
			request.getSession().setAttribute("userid", user.getUserid());
			request.setAttribute("username", user.getUsername());
	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	private void loadData(String userid, HttpServletRequest request) throws Exception{
		
			String navPath = GlobalData.navPaths;
			System.out.println(navPath);
		
			Map<String,List<StoragePojo>> alldatas = StorageDao.getAllStorageData(userid, navPath);
			
			if(alldatas!=null) {
				request.setAttribute("alldatas", alldatas);
			}
		
	}

}
