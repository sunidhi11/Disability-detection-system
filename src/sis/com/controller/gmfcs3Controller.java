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
public class gmfcs3Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session = request.getSession();
			String value4 = request.getParameter("10");
			String value5 = request.getParameter("11");
			String value6 = request.getParameter("12");
			String value7 = request.getParameter("13");
			
			if(value4.equalsIgnoreCase("NO")==true && value5.equalsIgnoreCase("YES")==true 
					&& value6.equalsIgnoreCase("NO")==true && value7.equalsIgnoreCase("NO")==true){
				int flag=4;
				 session.setAttribute("level4MSG", 80);
				 session.setAttribute("flag", flag);
				 response.sendRedirect("result.jsp");
			}
			else{
				session.setAttribute("level4MSG", "90");
				int flag=5;
				 session.setAttribute("flag", flag);
				 response.sendRedirect("result.jsp");
			}
	}

}
