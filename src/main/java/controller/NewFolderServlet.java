package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StorageDao;
import global.GlobalData;
import pojo.StoragePojo;

/**
 * Servlet implementation class NewFolderServlet
 */
@WebServlet("/NewFolderServlet")
public class NewFolderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("new folder servlet calls");
		
		String userid = (String) request.getSession().getAttribute("userid");
		
		String folderName = (String) request.getParameter("data");
		System.out.println(folderName);
		
		if(!folderName.isEmpty() || folderName !=null) {
			StoragePojo s = new StoragePojo();
			s.setFileName(folderName);
			s.setNavPath(GlobalData.navPaths);
			s.setUserId(userid);
			s.setType("folder");
			s.setCreateDate(new Date());
			
			try {
				boolean result = StorageDao.insertNewFolder(s);
				
				if(result) {
					System.out.println("inserted new folder");
					request.getRequestDispatcher("HomeServlet").include(request, response);
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
