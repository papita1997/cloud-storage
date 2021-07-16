package controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StorageDao;
import global.GlobalData;
import pojo.StoragePojo;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = (String) request.getSession().getAttribute("userid");
		String navPath = GlobalData.navPaths;
		System.out.println(navPath);
		request.setAttribute("navPaths", navPath);
		try {
			Map<String,List<StoragePojo>> alldatas = StorageDao.getAllStorageData(userid, navPath);
			
			if(alldatas!=null) {
				request.setAttribute("alldatas", alldatas);
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
