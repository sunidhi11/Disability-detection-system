package sis.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class gmfcs3Controller
 */
public class hearing3Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session = request.getSession();
			String value4 = request.getParameter("4");
			
			if(value4.equalsIgnoreCase("Yes")){
				int flag=4;
				 session.setAttribute("level4MSG", "Severe hearing loss");
				 session.setAttribute("flag", flag);
				 response.sendRedirect("result1.jsp");
			}
			else{
				session.setAttribute("level4MSG", "Profound hearing loss");
				int flag=5;
				 session.setAttribute("flag", flag);
				 response.sendRedirect("result1.jsp");
			}
	}

}
