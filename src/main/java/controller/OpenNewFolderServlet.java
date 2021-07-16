package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.GlobalData;

/**
 * Servlet implementation class OpenNewFolderServlet
 */
@WebServlet("/OpenNewFolderServlet")
public class OpenNewFolderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("open new folder servlet calls");
		
		String openFolderId = (String) request.getParameter("id");
		String openFolderName = (String) request.getParameter("name");
		//System.out.println(openFolderId+" "+openFolderName);
		
		int id = Integer.parseInt(openFolderId);
		if(id>0) {
			GlobalData.navPaths = GlobalData.navPaths+openFolderName+"/"+id+"/";
			request.getRequestDispatcher("HomeServlet").include(request, response);
		}
	}

}
