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
public class gmfcs2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session = request.getSession();
			String value4 = request.getParameter("7");
			String value5 = request.getParameter("8");
			String value6 = request.getParameter("9");
			int flag=3;
			if(value4.equalsIgnoreCase("NO")==true && value5.equalsIgnoreCase("YES")==true 
					&& value6.equalsIgnoreCase("NO")==true){
				 session.setAttribute("level3MSG", 60);
				 session.setAttribute("flag", flag);
				 response.sendRedirect("result.jsp");
			}
			else{
				session.setAttribute("level3MSG", "80");
				 response.sendRedirect("gmfcs3.jsp");
			}
	}

}
