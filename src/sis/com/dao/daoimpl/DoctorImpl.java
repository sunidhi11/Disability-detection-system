package sis.com.dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import sis.com.dao.Doctor;
import sis.com.util.SisDbUtil;

public class DoctorImpl {
	boolean addDoctor(Doctor doctor);{
		Connection con=null;
		 PreparedStatement pstmt=null;
		 PreparedStatement pstmt_getid=null;
		 PreparedStatement pstmt_parent=null;
		 PreparedStatement pstmt_doc=null;
		 int result=0;
		 ResultSet rs= null;
		try{
			con  = SisDbUtil.getConnection();
		
		
String sql="insert into register_student(ROLLNO,NAME,COURSE,BRANCH,MOBILENO,"
		+ "EMAIL,SEMESTER,CGPA,ENROLLMENT,HOSTEL,gender,"
		+ "category,dob,ADDRESS,accno)"
		+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
pstmt=con.prepareStatement(sql);
//===============student details==========================
//pstmt.setLong(1,nextId);
pstmt.setLong(1,regstudent.getRollno());
pstmt.setString(2,regstudent.getName());
pstmt.setString(3, regstudent.getCourse());
pstmt.setString(4,regstudent.getBranch());
pstmt.setString(5, regstudent.getMobileno());
pstmt.setString(6, regstudent.getEmail());
pstmt.setInt(7, regstudent.getSemester());
pstmt.setFloat(8, regstudent.getCgpa());
pstmt.setLong(9, regstudent.getEnrollment());
		}
	}


