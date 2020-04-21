package com.cms.controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cms.PayLoads.CoursePayload;
import com.cms.entity.Course;
import com.cms.entity.Student;
import com.cms.services.CourseService;
import com.cms.services.StudentService;


@Controller
public class StudentController {

	
	@Autowired
	StudentService  studentServcie ; 
	
	@Autowired
	CourseService courseServcie ; 
	
	@GetMapping("/add-student")
	public String showStudentForm(HttpServletRequest request){
		request.setAttribute("mode", "MODE_ADDSSTUDENT");
		request.setAttribute("courses", courseServcie.getAllCourses());
		return "addStudent" ; 
	}
	
	@PostMapping("student-save")
	public String addStudent(@ModelAttribute Student student, BindingResult binding , HttpServletRequest request){
		studentServcie.addStudent(student);
			
		studentServcie.addCourseToStudent(student,request.getParameterValues("checkbox") );
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage" ;  

	}
	
	@RequestMapping("/delete-student")
	public String deleteCourse(@RequestParam int id, HttpServletRequest request) {
		studentServcie.deleteCourse(id);
		request.setAttribute("students", studentServcie.getAllStudents());
		request.setAttribute("mode", "ALL_STUDENTS");
		return "allstudentspage";
	}
	
	
	@GetMapping("/showstudents")
	public String showAllCourses(HttpServletRequest request){
		request.setAttribute("students", studentServcie.getAllStudents());
		request.setAttribute("mode", "ALL_STUDENTS");
		return "allstudentspage" ; 
	}
	
	@RequestMapping("/edit-student")
	public String editCourse(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("student",studentServcie.editStudent(id));
		Set<Course> currentCourses = studentServcie.editStudent(id).getCourse();
		List<CoursePayload> allCourses = courseServcie.getAllCourses();
		request.setAttribute("currentCourses", currentCourses);
		request.setAttribute("courses", allCourses);
		request.setAttribute("mode", "MODE_UPDATE");
		return "addStudent";
	}
	
	@GetMapping("/showstudents/{id}")
	public String  getStudentProfile(@PathVariable("id") int id , HttpServletRequest request)
	{
		request.setAttribute("mode","MODE_STUDENT_PROFILE");
		request.setAttribute("student", studentServcie.getStudent(id));
		return "studentprofilepage" ;
	}
}































