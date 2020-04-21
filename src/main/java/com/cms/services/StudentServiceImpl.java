package com.cms.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cms.entity.Student;
import com.cms.entity.StudentCourse;
import com.cms.entity.StudentCourseID;
import com.cms.repository.StudentCourseRepository;
import com.cms.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {

	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private StudentCourseRepository studentCourseRepository;
	
	@Override
	public void addStudent(Student student) {
		studentRepository.save(student);
		
	}

	@Override
	public Student editStudent(int id) {
		return studentRepository.findById(id);
	}

	@Override
	public List<Student> getAllStudents() {
		
		List<Student> students= new ArrayList<>();
		studentRepository.findAll().forEach(students::add);
		return students;
	}
	
	@Override
	public Student getStudent(int id) {
		
		return studentRepository.findById(id);
	}

	@Override
	public void deleteCourse(int id) {
		studentRepository.deleteById(id);
		
	}

	@Override
	public void addCourseToStudent(Student student, String[] strings) {
		for(int i =0 ;i < strings.length ; i++) {
			StudentCourse studentCourse = new StudentCourse();
			StudentCourseID studentCourseID = new StudentCourseID(student.getId(),strings[i]);
			studentCourse.setStudentCourseID(studentCourseID);
			studentCourseRepository.save(studentCourse);
			
		}
		
	}

}
