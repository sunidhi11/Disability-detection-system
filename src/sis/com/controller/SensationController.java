package sis.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SensationController
 */
public class SensationController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int flag=2;
		float result_sensation=0;
		String Thumb1= request.getParameter("Thumb1");
		if(Thumb1.equalsIgnoreCase("yes")){
			result_sensation=result_sensation+9;
		}
		String Index1= request.getParameter("Index1");
		if(Index1.equalsIgnoreCase("yes")){
			result_sensation=result_sensation+6;
		}
		String Middle1= request.getParameter("Middle1");
		if(Middle1.equalsIgnoreCase("yes")){
			result_sensation=result_sensation+5;
		}
		String Ring1= request.getParameter("Ring1");
		if(Ring1.equalsIgnoreCase("yes")){
			result_sensation=result_sensation+5;
		}
		String Little1= request.getParameter("Little1");
		if(Little1.equalsIgnoreCase("yes")){
			result_sensation=result_sensation+5;
		}
		session.setAttribute("flag",flag);
		session.setAttribute("result_sensation",result_sensation);
		response.sendRedirect("hand_component.jsp");

		
	}

}
