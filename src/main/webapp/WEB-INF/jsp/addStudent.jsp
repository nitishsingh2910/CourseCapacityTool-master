<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>student adding page</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link href="static/css/styles.css" rel="stylesheet">
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="${contextRoot}/static/js/script.js"></script>

</head>
<body>
	<div id='courses'>
		<ul>
			<li class='active'><a href='/welcome'>Course Capacity Tool</a></li>

			<li><a href="/addCourse">New Course</a></li>
			<li><a href="/show-courses">All Courses</a></li>
			<!-- <li><a href="/show-courses-to-users">All Courses To users</a></li> -->
			<li><a href="/show-schedule">Schedule</a></li>
			<li><a href="/add-shedule-data">AddSchedule</a></li>
			<li><a href="/showstudents">Student Profile</a></li>
			<li><a href="/AllInstructors">Instructors</a></li>
			<li><a href="/addinstructorProfiledata">Add Professor</a></li>
			<li><a href="/attendence-services">Show attendance services</a></li>
			<li><a href="/add-student">Add Student</a></li>			
			<!-- <li><a href='#'>Contact</a></li>-->
		</ul>
	</div>
	<c:choose>
		<c:when test="${mode=='MODE_ADDSSTUDENT' }">
			<div class="container text-center">
				<h3>New Student</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="student-save">
					<input type="hidden" name="id" value="${student.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${student.name }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="email"
								value="${student.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Year</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="level"
								value="${student.level }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Department </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="dept"
								value="${student.dept}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mobile Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="phoneNo"
								value="${student.phoneNo}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address"
								value="${student.address}" />
						</div>
					</div>
				 	<div class="form-group">
						<label class="control-label col-md-3">Course(s)</label>
						<div class="col-md-7">
							<c:forEach var="course" items="${courses}">
								<input type="checkbox" id="${course.id}" value="${course.id}"
								name="checkbox">
								<label>${course.desc}</label>
							</c:forEach>
						</div>
					</div> 
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Add" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Update Student</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="student-save">
					<input type="hidden" name="id" value="${student.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${student.name }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="email"
								value="${student.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Year</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="level"
								value="${student.level }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Department </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="dept"
								value="${student.dept }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mobile Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="phoneNo"
								value="${student.phoneNo}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address"
								value="${student.address}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Existing Course(s)</label>
						<div class="col-md-7">
							<c:forEach var="course" items="${currentCourses}">
								<input type="checkbox" id="${course.id}" value="${course.id}" checked
								name="checkbox">
								<label>${course.description}</label>
							</c:forEach>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Course(s)</label>
						<div class="col-md-7">
							<c:forEach var="course" items="${courses}">
								<input type="checkbox" id="${course.id}" value="${course.id}"
								name="checkbox">
								<label>${course.desc}</label>
							</c:forEach>
						</div>
					</div>
					
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>
		
		</c:choose>
</body>
</html>