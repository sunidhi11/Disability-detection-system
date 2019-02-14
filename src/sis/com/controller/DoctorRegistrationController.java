package sis.com.controller;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sis.com.bo.Doctor;
import sis.com.dao.DoctorDao;


/**
 * Servlet implementation class DoctorRegistrationController
 */
public class DoctorRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String name= request.getParameter("name");
	String experience= request.getParameter("experience");
	String filed= request.getParameter("field");
	String address= request.getParameter("address");
	String email= request.getParameter("email");
	String contact= request.getParameter("contact");
	Doctor doctor= new Doctor();
	doctor.setName(name);
	doctor.setExperience(experience);
	doctor.setFiled(filed);
	doctor.setAddress(address);
	doctor.setEmail(email);
	doctor.setContact(address);
	DoctorDao dao=sis.com.dao.daofactory.DaoFactory.getDoctorDao();
	boolean result=dao.addDoctor( doctor);
	if(result==true){
		response.sendRedirect("doctor_register.jsp");
		System.out.println("doctor..........");
	}

	
	}

}
