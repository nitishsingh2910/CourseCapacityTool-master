<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Students</title>
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
	<div class="container text-center" id="tasksDiv">
	<h3>All Students</h3>
	<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Email</th>
								<th>Address</th>
								<th>Phone Number</th>
								<th>Year</th>
								<th>Department</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="student" items="${students }">
								<tr>
									<td>${student.id}</td>
									<td>${student.name}</td>
									<td>${student.email}</td>
									<td>${student.address}</td>
									<td>${student.phoneNo}</td>
									<td>${student.level}</td>
									<td>${student.dept}</td>
									<td><a href="/delete-student?id=${student.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-student?id=${student.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				</div>

</body>
</html>