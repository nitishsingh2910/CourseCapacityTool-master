package com.cms.services;


import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.cms.PayLoads.CoursePayload;
import com.cms.entity.Course;
import com.cms.repository.CourseRepository;



@Service
@Transactional
public class CourseServiceImp implements CourseService {
	
	
	 
	private final CourseRepository courseRepository;

	
	public CourseServiceImp(CourseRepository courseRepository){
		this.courseRepository = courseRepository ; 
	}
	
	@Override
	public void addCourse(Course course) {
	 courseRepository.save(course);
		
	}
	
	@Override
	public List<CoursePayload> getAllCourses() {
		//List<Course> courses = new ArrayList<>();
		List<CoursePayload> payloads =new ArrayList<>();
		Iterable<Course> allCourses = courseRepository.findAll();
		for(Course course : allCourses) {
			CoursePayload payload =new CoursePayload();
			payload.setCode(course.getCode());
			payload.setDesc(course.getDescription());
			payload.setId(course.getId());
			payload.setInstructor(course.getInstructor().getInstructorName());
			payload.setName(course.getName());
			payload.setTerm(course.getTerm());
//			payload.setType(course.getType());
			payload.setYear(course.getYear());
			payload.setImageURL(course.getImageUrl());
			payloads.add(payload);
		}
				
		return payloads;
	}

	@Override
	public void deleteCourse(int id) {
		courseRepository.deleteById(id);
		
	} 
	
	@Override
	public Course editCourse(int id) {
		return courseRepository.findById(id);
	}


	@Override
	public Course getCourse(int id) {
		
		return courseRepository.findById(id);
	}
	
	@Override
	public List<Course> getAllCoursesByTerm(String term) {
		return courseRepository.findAllByTermIgnoreCase(term);
	}
	
	@Override
	public List<Course> getAllCoursesByYear(String year) {
		return courseRepository.findAllByYearIgnoreCase(year);
	}
	
	

	@Override
	public List<Course> getAllCoursesByYearANDTermIgnoreCase(String year, String term) {
		
		List<Course> c = courseRepository.findAllByYearAndTermIgnoreCase(year, term);
		System.out.println(c.size());
		return c ;
	}

	@Override
	public void updateCourse(Course course) {
		courseRepository.save(course);
	}

	@Override
	public List<Course> getCourseByYear(String year) {
		// TODO Auto-generated method stub
		return courseRepository.findAllByYearIgnoreCase(year);
	}

	@Override
	public List<Course> getAllCoursesByInstructorId(int id) {
		// TODO Auto-generated method stub
		return courseRepository.findbyinstrucor(id);
	}

		

}
