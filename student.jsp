<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<title>Student Login</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<link rel="icon" href="https://image.freepik.com/free-icon/jsp-file-format-symbol_318-45781.jpg">
	<link rel="stylesheet" href="assets/css/student.css" />

</head>

<body>
	<jsp:useBean id='studentInfo' class="beans.Student">
		<jsp:setProperty name="studentInfo" property="*" />
	</jsp:useBean>



	<form class="login-form" action="student.jsp" method="POST">

		<input type='hidden' name='submitted' value='true'>
		<h1>Student</h1>
		<div class="form-field">
			<i class="fa fa-user"></i>
			<input type="text" name="firstName" id="name" value="" class="form-field" placeholder=" ">
			<label for="name">Name</label>
		</div>
		<c:if test="${param.submitted && !studentInfo.firstNameValid }">
			<p> Name Not Entered!</p>
		</c:if>
		<div class="form-field">
			<i class="fa fa-envelope"></i>
			<input type="text" name="emailAddr" id="email" class="form-field" placeholder=" ">
			<label for="email">Email</label>
		</div>
		<c:if test="${param.submitted && empty studentInfo.emailAddr }">
			<p>email required!</p>
		</c:if>
		<div class="form-field">
			<i class="fa fa-child"></i>
			<input type="text" name="ageStudent" id="age" class="form-field" placeholder=" ">
			<label for="age">Age</label>
		</div>
		<c:if test="${param.submitted && !customerInfo.ageValid }">
			<p style='color:red;'>Age Not Entered or Valid</p>
		</c:if>
		<div class="form-field">
			<i class="fa fa-graduation-cap"></i>
			<input type="text" name="course" id="course" class="form-field" placeholder=" ">
			<label for="course">Course</label>
		</div>
		<c:if test="${param.submitted && !studentInfo.course }">
			<p style='color:red;'>Age Not Entered or Valid</p>
		</c:if>
		<div class="form-field">
			<i class="fa fa-sticky-note"></i>
			<input type="text" name="roll" id="roll" class="form-field" placeholder=" ">
			<label for="roll">Roll No.</label>
		</div>
		<c:if test="${param.submitted && !studentInfo.emailAddr }">
			<p>This can't be Empty</p>
		</c:if>
		<button type="submit" value="Login" class="btn">Let's Go</button>
	</form>

	<div id="data">
		<center>
			<c:if test="${ param.submitted}">
				<h3>You entered:</h3><br>
				<b>Username::</b>
				<c:out value="${customerInfo.username}" /><br>

				<b>Email Address::</b>
				<c:out value="${customerInfo.emailAddress}" /><br>
				<b>Age::</b>
				<c:out value="${customerInfo.age}" /><br>
				<br>
				<!-- <b>Food:</b>
					<c:forEach items="${customerInfo.food }" var="current">
						<c:out value="${current }" />&nbsp
					</c:forEach> -->

			</c:if>
		</center>
	</div>
</body>

</html>