<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <title>Customer Login</title>
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
<style>

</style>

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
            <li><a href="student.jsp">Student</a></li>
            <li><a >Customer</a></li>
        </ul>
    </nav>
    <jsp:useBean id='customerBean' class="beans.Customer">
        <jsp:setProperty name="customerBean" property="*" />
    </jsp:useBean>
    <form class="login-form" action="customer.jsp" method="POST">

        <input type='hidden' name='submitted' value='true'>
        <h1>Customer</h1>
        <div class="form-field">
            <i class="fa fa-user"></i>
            <input type='text' name='name' value="<c:out value='${param.name}' />" class="form-field" placeholder=" " />
            <label for="name">Name</label>
        </div>
        <c:if test="${param.submitted && !customerBean.nameValid }">
            <p>enter valid name!</p>
        </c:if>
        <div class="form-field">
            <i class="fa fa-envelope"></i>
            <input type='text' name='email' value="<c:out value='${param.email}' />" class="form-field"
                placeholder=" " /><br>
            <label for="email">Email</label>
        </div>
        <c:if test="${param.submitted && empty customerBean.email }">
            <p>enter valid email</p>
        </c:if>
        <div class="form-field">
            <i class="fa fa-child"></i>
            <input type="text" name="age" id="age" value="<c:out value='${param.age}' />" class="form-field"
                placeholder=" ">
            <label for="age">Age</label>
        </div>
        <c:if test="${param.submitted && !customerBean.ageValid }">
            <p>enter age b/w 17 and 25</p>
        </c:if>
        <div class="form-field">
            <i class="fa fa-calendar" ></i>
            <input type="text" name="date" id="date" value="<c:out value='${param.date}' />" class="form-field"
                placeholder=" ">
            <label for="date">Date</label>
        </div>
        <c:if test="${param.submitted && !customerBean.dateValid }">
            <p>enter date in (dd/mm/yyyy) format</p>
        </c:if>
        <button type="submit" value="Login" class="btn" >Let's Go</button>

    </form>

    <div class="output">
        <center>
            <c:if
                test="${ param.submitted && customerBean.nameValid &&customerBean.emailValid &&customerBean.ageValid}">
                <h3>You entered:</h3><br>
                <b>Name =</b>
                <c:out value="${customerBean.name}" /><br>
                <b>Email =</b>
                <c:out value="${customerBean.email}" /><br>
                <b>Age =</b>
                <c:out value="${customerBean.age}" /><br>
                <br>
                <a class="btn btn-primary" type="submit" href="product.jsp"><i class="fa fa-shopping-cart" aria-hidden="true"></i>
                     Shop Now</a>
            </c:if>
        </center>
    </div>

    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>

</body>

</html>