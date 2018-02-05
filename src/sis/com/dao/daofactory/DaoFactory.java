package sis.com.dao.daofactory;

import java.util.List;

import sis.com.dao.DoctorDao;
import sis.com.dao.daoimpl.DocotDaoImpl;



public class DaoFactory {

	private static DoctorDao 	doctorDao;
	public static DoctorDao getDoctorDao(){
	
		System.out.println("hello3"); 
		
		if(doctorDao==null){
			doctorDao = new DocotDaoImpl();
		}
		return doctorDao;
	}
	

	
} //class