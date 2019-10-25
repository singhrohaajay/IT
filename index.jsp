<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
	<title>JSP Project - Ajay</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="icon" href="https://image.freepik.com/free-icon/jsp-file-format-symbol_318-45781.jpg">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<a class="logo" href="index.html">Home Page</a>
		<nav>
			<a href="#menu">Menu</a>
		</nav>
	</header>

	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="#">Home</a></li>
			<li><a href="#">Student</a></li>
			<li><a href="#">Customer</a></li>
		</ul>
	</nav>

	<!-- Banner -->
	<section id="banner">
		<div class="inner">
			<h1>JSP - Project</h1>
			<p>A responsive jsp project demonstrating use of beans for validating forms, then rendering student
				dashboard, customer product with a feature for buying products.
			</p>
		</div>

	</section>




	<!-- Login -->
	<section class="wrapper">
		<div class="inner">
			<header class="special">
				<h2>Login Here</h2>
				<p>A student choses Student Login, a customer looking for buying products selects Customer Login.</p>
			</header>
			<div >

				<section>
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-6 ">
								<a class="btn btn-success loginButton" href="student.jsp"><i class="fa fa-graduation-cap" aria-hidden="true"></i>
 									Student</a>
							</div>
							<div class="col-6">
								<a class="btn btn-success loginButton"  href="customer.jsp"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
 									Customer</a>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer id="footer">
		<div class="inner">
			<div class="content">
				<section>
					<h3>JSP-Project</h3>
					<p>A responsive jsp project demonstrating use of beans for validating forms, then rendering student
						dashboard, customer product with a feature for buying products.A student choses Student Login, a
						customer looking for buying products selects Customer Login.</p>
				</section>
			</div>
			<div class="copyright">

			</div>
		</div>
	</footer>

	<!-- Scripts -->
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>