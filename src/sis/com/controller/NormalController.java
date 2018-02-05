package sis.com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NormalController
 */
public class NormalController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		ArrayList<String> list= new ArrayList<String>();
		
		String optradio1= request.getParameter("optradio1");
		if(optradio1.equalsIgnoreCase("yes")){
			list.add("Physical disability");
		}
		String optradio2= request.getParameter("optradio2");
		if(optradio2.equalsIgnoreCase("no")){
			list.add("Communication disability");
		}
		String optradio3= request.getParameter("optradio3");
		if(optradio3.equalsIgnoreCase("yes")){
			list.add("Visual Impairment");
		}
		String optradio4= request.getParameter("optradio4");
		if(optradio4.equalsIgnoreCase("yes")){
			list.add("Hearing disability");
		}
		String optradio5= request.getParameter("optradio5");
		if(optradio5.equalsIgnoreCase("yes")){
			list.add("Epilipsy disability");
		}
		String optradio6= request.getParameter("optradio6");
		if(optradio6.equalsIgnoreCase("yes")){
			list.add("physical disability");
		}
		String optradio7= request.getParameter("optradio7");
		if(optradio7.equalsIgnoreCase("yes")){
			list.add("Epilipsy disability");
		}
		String optradio8= request.getParameter("optradio8");
		if(optradio8.equalsIgnoreCase("no")){
			list.add("Epilipsy disability");
		}
		String optradio9= request.getParameter("optradio9");
		if(optradio9.equalsIgnoreCase("no")){
			list.add("Communication disability");
		}
		String optradio10= request.getParameter("optradio10");
		if(optradio10.equalsIgnoreCase("yes")){
			list.add("Communication disability");
		}
		String optradio11= request.getParameter("optradio11");
		if(optradio11.equalsIgnoreCase("yes")){
			list.add("Epilipsy disability");
		}
		session.setAttribute("list",list);
		response.sendRedirect("result_normal.jsp");
	
	}

}
