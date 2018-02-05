package sis.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class gmfcs2Controller
 */
public class hearing2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session = request.getSession();
			String value4 = request.getParameter("3");
			int flag=3;
			if(value4.equalsIgnoreCase("Yes")==true ){
				 session.setAttribute("level3MSG", "Moderate hearing loss");
				 session.setAttribute("flag", flag);
				 response.sendRedirect("result1.jsp");
			}
			else{
				session.setAttribute("level3MSG", "80");
				 response.sendRedirect("hear3.jsp");
			}
	}

}
