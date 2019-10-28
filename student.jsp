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
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="assets/css/student.css" />

</head>

<body>
	<!-- Header -->
	<header id="header">
		<a class="logo" href="index.jsp">Home </a>
		<nav>
			<a href="#menu">Menu</a>
		</nav>
	</header>

	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a>Student</a></li>
			<li><a href="customer.jsp">Customer</a></li>
		</ul>
	</nav>
	<jsp:useBean id='studentBean' class="beans.Student">
		<jsp:setProperty name="studentBean" property="*" />
	</jsp:useBean>



	<form class="login-form" action="student.jsp" method="POST">

		<input type='hidden' name='submitted' value='true'>
		<h1>Student</h1>
		<div class="form-field">
			<i class="fa fa-user"></i>
			<input type="text" name="name" id="name" value="<c:out value='${param.name}'/>" class="form-field"
				placeholder=" ">
			<label for="name">Name</label>
		</div>
		<c:if test="${param.submitted && !studentBean.nameValid }">
			<p> Name Not Entered or invalid!</p>
		</c:if>
		<div class="form-field">
			<i class="fa fa-envelope"></i>
			<input type="text" name="email" id="email" class="form-field" value="<c:out value='${param.email}'/>"
				placeholder=" ">
			<label for="email">Email</label>
		</div>
		<c:if test="${param.submitted && !studentBean.emailValid }">
			<p>valid email required!</p>
		</c:if>
		<div class="form-field">
			<i class="fa fa-child"></i>
			<input type="text" name="age" id="age" class="form-field" value="<c:out value='${param.age}'/>"
				placeholder=" ">
			<label for="age">Age</label>
		</div>
		<c:if test="${param.submitted && !studentBean.ageValid }">
			<p>Age Not Entered or inValid!</p>
		</c:if>
		<div class="form-field">
			<i class="fa fa-graduation-cap"></i>
			<input type="text" name="course" id="course" class="form-field" value="<c:out value='${param.course}'/>"
				placeholder=" ">
			<label for="course">Course</label>
		</div>
		<c:if test="${param.submitted && !studentBean.courseValid }">
			<p>enter valid course!</p>
		</c:if>
		<div class="form-field">
			<i class="fa fa-sticky-note"></i>
			<input type="text" name="roll" id="roll" class="form-field" value="<c:out value='${param.roll}'/>"
				placeholder=" ">
			<label for="roll">Roll No.</label>
		</div>
		<c:if test="${param.submitted && !studentBean.rollValid}">
			<p>enter 4 digit number!</p>
		</c:if>
		<div class="radioBtn ">
			<div class="group">
				<h5>Gender</h5>
				<input type="radio" name="gender" id="rb1" value="male" ${studentBean.male? 'checked' :''} />
				<label for="rb1">Male</label>
				<input type="radio" name="gender" id="rb2" value="female" ${studentBean.female? 'checked' :''} />
				<label for="rb2">Female</label>
			</div>
		</div>
		<c:if test="${param.submitted && studentBean.gender==null}">
			<p>select a gender!</p>
		</c:if>

		<button type="submit" value="Login" class="btn">Let's Go</button>
	</form>

	<div class="output">
		<center>
			<c:if
				test="${ param.submitted && studentBean.nameValid &&studentBean.emailValid &&studentBean.ageValid&&studentBean.courseValid&&studentBean.rollValid}">
				<h3>You entered:</h3><br>
				<b>Name = </b>
				<c:out value="${studentBean.name}" /><br>

				<b>Email = </b>
				<c:out value="${studentBean.email}" /><br>
				<b>Age =</b>
				<c:out value="${studentBean.age}" /><br>
				<b>Course =</b>
				<c:out value="${studentBean.course}" /><br>
				<b>Roll No. =</b>
				<c:out value="${studentBean.roll}" /><br>
				<b>Gender =</b>
				<c:out value="${studentBean.gender}" /><br>
				<br>

			</c:if>
		</center>
	</div>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>

</html>