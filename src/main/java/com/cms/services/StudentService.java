package com.cms.services;

import java.util.List;

import com.cms.entity.Student;


public interface StudentService {

	
	void addStudent(Student student);
//	void updateCourse(Course course);
	Student getStudent(int id);
	List<Student> getAllStudents();
	Student editStudent(int id);
	void deleteCourse(int id);
	void addCourseToStudent(Student student, String[] strings);
//    List<Course> getAllCoursesByTerm(String term);
//    List<Course> getAllCoursesByYear(String year);
//    List<Course> getAllCoursesByYearANDTermIgnoreCase(String year,String term);
	
}
