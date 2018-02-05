package sis.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class locomotionController
 */
public class locomotionController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	float result=0;
	
	HttpSession session = request.getSession();
	String result11= request.getParameter("index");
	if(result11.equalsIgnoreCase("no")){
		result=result+2;
	}
	String result12= request.getParameter("middle");
	if(result12.equalsIgnoreCase("no")){
		result=result+2;
	}
	String result13= request.getParameter("ring");
	if(result13.equalsIgnoreCase("no")){
		result=result+2;
	}
	String result14= request.getParameter("little");
	if(result14.equalsIgnoreCase("no")){
		result=result+2;
	}
	
	String result2= request.getParameter("lateral");
	if(result2.equalsIgnoreCase("no")){
		result=result+5;
	}
	String result31= request.getParameter("cylindricalLarge");
	if(result31.equalsIgnoreCase("no")){
		result=result+3;
	}
	String result32= request.getParameter("cylindricalSmall");
	if(result32.equalsIgnoreCase("no")){
		result=result+3;
	}
	String result41= request.getParameter("Sphericallarge");
	if(result41.equalsIgnoreCase("no")){
		result=result+3;
	}
	String result42= request.getParameter("Sphericalsmall");
	if(result42.equalsIgnoreCase("no")){
		result=result+3;
	}
	String result5= request.getParameter("Hook");
	if(result5.equalsIgnoreCase("no")){
		result=result+5;
	}
	int flag=1;
	System.out.println("result is"+result);
	session.setAttribute("flag",flag);
	session.setAttribute("result",result);
	response.sendRedirect("hand_component.jsp");
	}

}
