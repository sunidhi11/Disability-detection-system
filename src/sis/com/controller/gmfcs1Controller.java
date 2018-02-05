package sis.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class gmfcs1Controller
 */
public class gmfcs1Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    HttpSession session = request.getSession();
		String value4 = request.getParameter("4");
		String value5 = request.getParameter("5");
		String value6 = request.getParameter("6");
		int flag=2;
		if(value4.equalsIgnoreCase("YES")==true && value5.equalsIgnoreCase("NO")==true 
				&& value6.equalsIgnoreCase("NO")==true){
			 session.setAttribute("level2MSG", 40);
			 session.setAttribute("flag", flag);
			 response.sendRedirect("result.jsp");
		}
		else{
			session.setAttribute("level2MSG", "60");
			 response.sendRedirect("gmfcs2.jsp");
		}
	}

}
