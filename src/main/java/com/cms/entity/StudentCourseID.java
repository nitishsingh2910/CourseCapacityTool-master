package com.cms.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.Table;


@Embeddable
public class StudentCourseID implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Column(name = "student_id")
    private int studentID;
 
	@Column(name = "course_id")
    private String courseID;

	public StudentCourseID() {
		
	}
	public int getStudentID() {
		return studentID;
	}

	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}

	public String getCourseID() {
		return courseID;
	}

	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}

	public StudentCourseID(int studentID, String courseID) {
		this.studentID = studentID;
		this.courseID = courseID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((courseID == null) ? 0 : courseID.hashCode());
		result = prime * result + studentID;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		StudentCourseID other = (StudentCourseID) obj;
		if (courseID == null) {
			if (other.courseID != null)
				return false;
		} else if (!courseID.equals(other.courseID))
			return false;
		if (studentID != other.studentID)
			return false;
		return true;
	}
	
	
    

}
