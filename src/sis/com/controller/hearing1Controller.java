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
public class hearing1Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    HttpSession session = request.getSession();
		String value4 = request.getParameter("2");
		int flag=2;
		if(value4.equalsIgnoreCase("YES")==true ){
			 session.setAttribute("level2MSG","Mild hearing loss");
			 session.setAttribute("flag", flag);
			 response.sendRedirect("result1.jsp");
		}
		else{
			session.setAttribute("level2MSG", "no");
			 response.sendRedirect("hear2.jsp");
		}
	}

}
