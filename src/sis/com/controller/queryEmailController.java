package sis.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sis.com.util.EmailSender;

/**
 * Servlet implementation class queryEmailController
 */
public class queryEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

           String query = request.getParameter("query");
           System.out.println(query);
           HttpSession session = request.getSession();
           String emailID =(String) session.getAttribute("emailID");
           
           boolean result = EmailSender.sendEmail(emailID,query, "New petient want to consult you ");
           if(result==true){
        	   session.setAttribute("queryResponse", "ok");
        	   response.sendRedirect("result.jsp");
           }
	}

}
