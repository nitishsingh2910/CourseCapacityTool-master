<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fill your data</title>
<link rel="stylesheet" type="text/css"
	href="http://yui.yahooapis.com/2.7.0/build/reset-fonts-grids/reset-fonts-grids.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${contextRoot}/static/css/resume11.css" media="all" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
		<c:when test="${mode=='MODE_ADD_INSTRUCTOR_PROFILE_DATA' }">

			<div id="doc2" class="yui-t7">
				<div id="inner">
					<div class="profile_img">
						<form class="FORM" method="POST" action="instructor-profile-saved"
							enctype="mulipart/form-data">


							<label style="font-size: 20px">choose your image profile</label><br>
							<br>
							<div class="upload">
								<input type="file" name="pic" accept="image/*" value="Upload">


							</div>
							<br> <br>
							<div id="bd">
								<div id="yui-main">
									<div class="yui-b">
										<div class="yui-gf">
											<div class="yui-u first">
												<h2>Name</h2>
											</div>
											<div class="yui-u">
												<textarea name="instructorName" style="width: 100%; height: 100px">${instructorProfile.instructorName}</textarea>

											</div>
										</div>
									</div>
								</div>
							</div>

							<div id="bd">
								<div id="yui-main">
									<div class="yui-b">
										<div class="yui-gf">
											<div class="yui-u first">
												<h2>Designation</h2>
											</div>
											<div class="yui-u">
												<textarea name="designation" style="width: 100%; height: 100px">${instructorProfile.designation}</textarea>

											</div>
										</div>
									</div>
								</div>
							</div>

<!-- 
							<div id="bd">
								<div id="yui-main">
									<div class="yui-b">
										<div class="yui-gf">
											<div class="yui-u first">
												<h2>Other titles</h2>
											</div>
											<div class="yui-u">
												<textarea name="otherTitles"
													style="width: 100%; height: 100px">${instructorProfile.otherTitles}</textarea>

											</div>
										</div>
									</div>
								</div>
							</div>
 -->
							<div id="bd">
								<div id="yui-main">
									<div class="yui-b">

										<div class="yui-gf">
											<div class="yui-u first">
												<h2>Research Interests</h2>
											</div>
											<div class="yui-u">
												<textarea name="resarchInterests"
													style="width: 100%; height: 100px">${instructorProfile.resarchInterests}</textarea>
											</div>
										</div>
									</div>
								</div>
							</div>





							<!--// .yui-gf-->


							<div id="bd">
								<div id="yui-main">
									<div class="yui-b">

										<div class="yui-gf">
											<div class="yui-u first">
												<h2>Current Research</h2>
											</div>
											<div class="yui-u">
												<textarea name="currentResearch"
													style="width: 100%; height: 100px">${instructorProfile.currentResearch}</textarea>

											</div>
										</div>
									</div>
								</div>
							</div>


							<div id="bd">
								<div id="yui-main">
									<div class="yui-b">

										<div class="yui-gf">
											<div class="yui-u first">
												<h2>Education</h2>
											</div>
											<div class="yui-u">
												<textarea name="Education"
													style="width: 100%; height: 100px">${instructorProfile.education}</textarea>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!--another-->
							<!--another-->

							<div id="bd">
								<div id="yui-main">
									<div class="yui-b">

										<div class="yui-gf">
											<div class="yui-u first">
												<h2>Time at Syracuse</h2>
											</div>
											<div class="yui-u">
												<textarea name="timeAtSyracuse"
													style="width: 100%; height: 100px">${instructorProfile.timeAtSyracuse}</textarea>

											</div>
										</div>
									</div>
								</div>
							</div>

							<!--another-->
							<!--another-->

							<div id="bd">
								<div id="yui-main">
									<div class="yui-b">

										<div class="yui-gf">
											<div class="yui-u first">
												<h2>Courses Taught</h2>
											</div>
											<div class="yui-u">
												<textarea name="coursesTaught"
													style="width: 100%; height: 100px">${instructorProfile.coursesTaught}</textarea>

											</div>
										</div>
									</div>
								</div>
							</div>
							<!--another-->
							<!--another-->

							<div id="bd">
								<div id="yui-main">
									<div class="yui-b">

										<div class="yui-gf">
											<div class="yui-u first">
												<h2>Current Activities</h2>
											</div>
											<div class="yui-u">
												<textarea name="currentActivities"
													style="width: 100%; height: 100px">${instructorProfile.currentActivities}</textarea>

											</div>
										</div>

									</div>
								</div>
							</div>

							<!--another-->

							<div id="bd">
								<div id="yui-main">
									<div class="yui-b">

										<div class="yui-gf">
											<div class="yui-u first">
												<h2></h2>
											</div>
											<div class="yui-u">
												<input type="submit" class="sub" value="Submit">
											</div>
										</div>
										<!--// footer -->

									</div>
									<!-- // inner -->


								</div>
								<!--// doc -->
							</div>

						</form>
					</div>
				</div>
			</div>
		</c:when>


	</c:choose>
</body>
</html>