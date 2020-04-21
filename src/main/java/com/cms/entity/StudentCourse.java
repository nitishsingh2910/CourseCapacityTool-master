package com.cms.entity;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="student_course")
public class StudentCourse implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@EmbeddedId
	private StudentCourseID studentCourseID;

	public StudentCourseID getStudentCourseID() {
		return studentCourseID;
	}

	public void setStudentCourseID(StudentCourseID studentCourseID) {
		this.studentCourseID = studentCourseID;
	}
	
	

}
