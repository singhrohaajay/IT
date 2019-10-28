<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Products</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" href="https://image.freepik.com/free-icon/jsp-file-format-symbol_318-45781.jpg">
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/product.css" />

</head>

<body class="is-preload">

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
            <li><a href="customer.jsp">Customer</a></li>
            <li><a href="#">Products</a></li>
        </ul>
    </nav>
    <jsp:useBean id='customerBean' class="beans.Customer">
        <jsp:setProperty name="customerBean" property="*" />
    </jsp:useBean>




    <div class="container">
        <h2>Products</h2>
        <div class="row">
            <div class="col-3">
                <div class="card ">
                    <img class="card-img-top"
                        src="https://m.media-amazon.com/images/I/51qCQr49ApL._AC_UY327_FMwebp_QL65_.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title"><a>JSP 2.0</a></h4>
                        <p class="card-text">Use JSP scripting elements--expressions, scriptlets, and declarations
                            Create dynamically generated Web content with Java Servlets</p>
                        <form action="product.jsp" method="POST">
                            <input type="hidden" name="id" value="0">
                            <button type="submit" class="btn ${customerBean.getId(0)? 'btn-success':'btn-primary'}"
                                name="products" value="JSP 2.0">
                                <c:choose>
                                    <c:when test="${!customerBean.getId(0)}">Buy
                                    </c:when>
                                    <c:otherwise>
                                        Added to Cart
                                    </c:otherwise>
                                </c:choose>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <img class="card-img-top"
                        src="https://m.media-amazon.com/images/I/41NwNgoDkbL._AC_UY327_FMwebp_QL65_.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title"><a>Web Application</a></h4>
                        <p class="card-text">Web application using JSP is a text book and reference for the people who
                            wish to learn</p>
                        <form action="product.jsp" method="POST">
                            <input type="hidden" name="id" value="1">
                            <button type="submit" class="btn ${customerBean.getId(1)? 'btn-success':'btn-primary'}"
                                name="products" value="Web Application">
                                <c:choose>
                                    <c:when test="${!customerBean.getId(1)}">Buy
                                    </c:when>
                                    <c:otherwise>
                                        Added to Cart
                                    </c:otherwise>
                                </c:choose>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <img class="card-img-top"
                        src="https://m.media-amazon.com/images/I/81Nx4oqxHlL._AC_UY327_FMwebp_QL65_.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title"><a>Web Development</a></h4>
                        <p class="card-text">Web Technologies: HTML, JAVASCRIPT, PHP, JAVA, JSP, ASP.NET, XML and Ajax,
                            Black Book: HTML</p>
                        <form action="product.jsp" method="POST">
                            <input type="hidden" name="id" value="2">
                            <button type="submit" class="btn ${customerBean.getId(2)? 'btn-success':'btn-primary'}"
                                name="products" value="Web Development">
                                <c:choose>
                                    <c:when test="${!customerBean.getId(2)}">Buy
                                    </c:when>
                                    <c:otherwise>
                                        Added to Cart
                                    </c:otherwise>
                                </c:choose>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <img class="card-img-top"
                        src="https://m.media-amazon.com/images/I/71mkZ4+43DL._AC_UY327_FMwebp_QL65_.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title"><a>Java Servlet</a></h4>
                        <p class="card-text">Java Servlet & JSP Cookbook: Practical Solutions to Real World Problems
                            Java Servlet & JSP Cookbook: Practical Solutions to Real World Problems</p>
                        <form action="product.jsp" method="POST">
                            <input type="hidden" name="id" value="3">
                            <button type="submit" class="btn ${customerBean.getId(3)? 'btn-success':'btn-primary'}"
                                name="products" value="Java Servlet">
                                <c:choose>
                                    <c:when test="${!customerBean.getId(3)}">Buy
                                    </c:when>
                                    <c:otherwise>
                                        Added to Cart
                                    </c:otherwise>
                                </c:choose>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <img class="card-img-top"
                        src="https://m.media-amazon.com/images/I/71cpcoglNgL._AC_UY327_FMwebp_QL65_.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title"><a>Head First</a></h4>
                        <p class="card-text">Head First Servlets & JSP: Passing the Sun Certified Web Component
                            Developer Exam</p>
                        <form action="product.jsp" method="POST">
                            <input type="hidden" name="id" value="4">
                            <button type="submit" class="btn ${customerBean.getId(4)? 'btn-success':'btn-primary'}"
                                name="products" value="Head First">
                                <c:choose>
                                    <c:when test="${!customerBean.getId(4)}">Buy
                                    </c:when>
                                    <c:otherwise>
                                        Added to Cart
                                    </c:otherwise>
                                </c:choose>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="card">
                    <img class="card-img-top"
                        src="https://m.media-amazon.com/images/I/71DF2cLW2KL._AC_UY327_FMwebp_QL65_.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title"><a>Beginning JSP</a></h4>
                        <p class="card-text">Beginning JSP, JSF and Tomcat: Java Web Development, 2ed (APRESS)</p>
                        <form action="product.jsp" method="POST">
                            <input type="hidden" name="id" value="5">
                            <button type="submit" class="btn ${customerBean.getId(5)? 'btn-success':'btn-primary'}"
                                name="products" value="Beginning JSP">
                                <c:choose>
                                    <c:when test="${!customerBean.getId(5)}">Buy
                                    </c:when>
                                    <c:otherwise>
                                        Added to Cart
                                    </c:otherwise>
                                </c:choose>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form class="cart-form" action="" method="POST">

        <input type='hidden' name='submitted' value='true'>
        <h1>Checkout</h1>
        <div class="form-field">
            <i class="fa fa-envelope"></i>
            <input type='text' name='email' value="<c:out value='${customerBean.email}' />" class="form-field"
                placeholder="Confirm Email" /><br>
        </div>
        <c:if test="${param.submitted && empty customerBean.email }">
            <p>enter valid email</p>
        </c:if>
        <div class="form-field">
            <i class="fa fa-calendar"></i>
            <input type="text" name="date" id="date" value="<c:out value='${customerBean.date}' />" class="form-field"
                placeholder="Delievery Date ">
        </div>
        <c:if test="${param.submitted && !customerBean.dateValid }">
            <p>enter date in (dd/mm/yyyy) format!</p>
        </c:if>
        <div class="form-field">
            <i class="fa fa-calendar"></i>
            <textarea name="" id="" disabled value="<c:out value='${customerBean.products}' />"
                 placeholder="Your Orders here "><c:out value='${customerBean.products}' /></textarea>
        </div>
        <c:if test="${param.submitted && empty customerBean.products }">
            <p>order something!</p>
        </c:if>
        <button type="submit" value="Login" class="btn">Buy Now</button>

    </form>
    <c:if test="${ param.submitted && customerBean.emailValid &&customerBean.dateValid }">

        <div class="output">
            <center>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-6">
                            <h4>Congratulations, Your Order of <c:out value='${customerBean.products}' /> has been placed!</h4>
                            <a href="index.jsp" class="btn btn-success">Back To Home</a>
                        </div>
                    </div>
                </div>

            </center>
        </div>
    </c:if>

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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>

</body>

</html>