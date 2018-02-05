package sis.com.dao.daoimpl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import sis.com.bo.Doctor;
import sis.com.dao.DoctorDao;
import sis.com.util.SisDbUtil;

public class DocotDaoImpl implements DoctorDao{
	

public boolean  addDoctor(Doctor doctor){
	int result1=0;
		
		Connection con=null;
		 PreparedStatement pstmt=null;
		 PreparedStatement pstmt_getid=null;
		 PreparedStatement pstmt_parent=null;
		 PreparedStatement pstmt_doc=null;
		 int result=0;
		 ResultSet rs= null;
		try{
			con  = SisDbUtil.getConnection();
		
		
String sql="insert into doctor (name,experience,field,address,email,contact)"
		+ "values(?,?,?,?,?,?)";


 pstmt=con.prepareStatement(sql);
 //===============student details==========================
// pstmt.setLong(1,nextId);
 pstmt.setString(1,doctor.getName());
 pstmt.setString(2,doctor.getExperience());
 pstmt.setString(3,doctor.getFiled());
 pstmt.setString(4,doctor.getAddress());
 pstmt.setString(5,doctor.getEmail());
 pstmt.setString(6,doctor.getContact());

 
	  result1=pstmt.executeUpdate();
	 System.out.println(" student table inserted"+result);
		}catch(Exception e){
			System.out.println("error");
		}
	if(result1==1){
		return true;
	}
	return false;

}

@Override
public Doctor getDoctorById(String emailId) {
		Doctor doctor=new Doctor();
		Connection con=null;
		ResultSet rs=null;
		
		 PreparedStatement pstmt=null;
		
		try{
			con  = SisDbUtil.getConnection();
			System.out.println("connection");
			String sql="select * from doctor where email=?";
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1,emailId);
	System.out.println("=============enrollment"+emailId);
		rs=pstmt.executeQuery();
		 if(rs.next()){
			 
			 doctor.setName(rs.getString("name"));
			 doctor.setExperience(rs.getString("experience"));
			 doctor.setFiled(rs.getString("field"));
			 doctor.setAddress(rs.getString("address"));
			 doctor.setEmail(rs.getString("email"));
			 doctor.setContact(rs.getString("contact"));

		 }
		}catch(Exception e){
			System.out.println("error");
			e.printStackTrace();
		}
		 	return doctor;
}

@Override
public List<Doctor> getAllDoctor(String field) {
	List<Doctor> doctorstulist =new ArrayList<Doctor>();
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	try {
		con = SisDbUtil.getConnection();
		String sql="select * from doctor where field=?";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,field);
		System.out.println("stuimpl2");
		 rs=pstmt.executeQuery();
		 while(rs.next()){
			
			 Doctor doctor=new Doctor(); 
             doctor.setName(rs.getString("name"));
             doctor.setEmail(rs.getString("email"));
             doctorstulist.add(doctor);
		 }
	} catch (Exception e) {
     e.printStackTrace();
	}
	return doctorstulist;
}
}


