package sis.com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SearchDiseaseController
 */
public class SearchDiseaseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String searchText=request.getParameter("searchText");
		ArrayList<String> list_physical= new ArrayList<String>();
		boolean result_physical=false;
		boolean result_speech=false;

		list_physical.add("hand");
		list_physical.add("legs");
		list_physical.add("physical");
		for(String element:list_physical){
		if(searchText.contains(element)){
			result_physical=true;
			response.sendRedirect("locomotion.jsp");
		}
	}
		
		ArrayList<String> list_speech= new ArrayList<String>();

		list_speech.add("hearing");
		list_speech.add("hear");
		list_speech.add("voice");
		list_speech.add("speech");
		for(String element_speech:list_speech){
		if(searchText.contains(element_speech)){
			result_speech=true;
			response.sendRedirect("hear.jsp");
		}
	}
		String error_result="search string does not found";
		if(result_speech==false&result_physical==false){
		session.setAttribute("error_result",error_result);
		response.sendRedirect("home.jsp");
		}	

	}   //post

}   //class
