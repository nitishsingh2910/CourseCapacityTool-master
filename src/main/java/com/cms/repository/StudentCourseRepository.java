package com.cms.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cms.entity.StudentCourse;

@Repository
public interface StudentCourseRepository extends CrudRepository<StudentCourse, Integer>{
	
	StudentCourse findById(int id) ;
	
}

