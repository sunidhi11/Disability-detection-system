package sis.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class gmfcsController
 */
public class gmfcsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String value1 = request.getParameter("1");
		String value2 = request.getParameter("2");
		String value3 = request.getParameter("3");
		int flag = 1;
		if(value1.equalsIgnoreCase("YES")==true && value2.equalsIgnoreCase("YES")==true 
				&& value3.equalsIgnoreCase("NO")==true){
			 session.setAttribute("level1MSG", "YOU HAVE NO MAJOR DISABILITY");
			 session.setAttribute("flag", flag);
			 response.sendRedirect("result.jsp");
			 
		}
		else{
			 session.setAttribute("level1MSG", "40");
			 response.sendRedirect("gmfcs1.jsp");
		}
		
	}

}
