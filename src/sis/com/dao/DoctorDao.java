package sis.com.dao;

import java.util.List;

import sis.com.bo.Doctor;

public interface DoctorDao {
	
		boolean addDoctor(Doctor doctor);
		Doctor getDoctorById(String emailId);
		List<Doctor> getAllDoctor(String field);

	
}
