package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.GlobalData;

/**
 * Servlet implementation class NavBackServlet
 */
@WebServlet("/NavBackServlet")
public class NavBackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String navName = (String) request.getParameter("navName");
		String navId = (String) request.getParameter("navId");
		System.out.println(navId);
		String temp = GlobalData.navPaths;
		temp = temp.substring(0,temp.lastIndexOf("/"));
		String lastNavId = temp.substring(temp.lastIndexOf("/")+1,temp.length());
		System.out.println("lastNav "+lastNavId);
		boolean connect = true;
		if(navName.equals("My Drive")) {
			GlobalData.navPaths = navName+"/";
		} else if(navId.equals(lastNavId)){
			connect = false;
		} else {
			GlobalData.navPaths = GlobalData.navPaths.substring(0,GlobalData.navPaths.lastIndexOf(navName+"/"+navId));
			GlobalData.navPaths = GlobalData.navPaths+navName+"/"+navId+"/";
		}
		if(connect) {
			request.getRequestDispatcher("HomeServlet").include(request, response);
		}
	}

}
