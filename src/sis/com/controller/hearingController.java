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
public class hearingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String value1 = request.getParameter("1");
		int flag = 1;
		if(value1.equalsIgnoreCase("YES")==true ){
			 session.setAttribute("level1MSG", "Normal Disability");
			 session.setAttribute("flag", flag);
			 response.sendRedirect("result1.jsp");
			 
		}
		else{
			 session.setAttribute("level1MSG", "no");
			 response.sendRedirect("hear1.jsp");
		}
		
	}

}
