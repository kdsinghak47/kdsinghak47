STUDENT _SIGNUP.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>STUDENT SIGNUP</title>

		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
	<link rel="stylesheet"href="css/Student_Signup.css">
</head>
<body>
<div class="container">
<div class="d-flex justify-content-center h-100">
<div class="card">
<div class="card-header">
<h3>STUDENT SIGN UP</h3>
				
</div>
<div class="card-body">
<form action="Student_Signup_Handler.jsp"method="post">
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-user"></i></span>
</div>
<input type="text"name="name"class="form-control"placeholder="Name">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-envelope"></i></span>
</div>
<input type="number"name="sid"class="form-control"placeholder="STUDENT'S ID">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-envelope"></i></span>
</div>
<input type="email"name="email"class="form-control"placeholder="Email">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-user"></i></span>
</div>
<input type="text"name="fname"class="form-control"placeholder="Father's Name">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span nclass="input-group-text"><i class="fas fa-user"></i></span>
</div>
<input type="text"name="mname"class="form-control"placeholder="Mother's Name">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-list"></i></span>
</div>
<select name="course"class="form-control">
<option value="00">Choose Course</option>
<option value="01">BCA</option>
<option value="02">BBA</option>
<option value="03">BSC</option>
<option value="04">B.COM</option>
<option value="05">B.ED</option>
</select>
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-phone-square"></i></span>
</div>
<input type="number"name="mobile"class="form-control"placeholder="Mobile No.">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-map-marker"></i></span>
</div>
<input type="text"name="address"class="form-control"placeholder="Address">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span  class="input-group-text"><i class="fas fa-key"></i></span>
</div>
<input type="password"name="pass"class="form-control"placeholder="Password">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-envelope"></i></span>
</div>
<input type="text"name="gender"class="form-control"placeholder="GENDER">
</div>
<div class="form-group">
<input type="submit"value="SUBMIT"class="btn float-center login_btn">
</div>
</form>
</div>
</div>
</div>
</body>
</html>





STUDENT_SIGNUP_HANDLER.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@pageimport="java.sql.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String name = request.getParameter("name");
String sid = request.getParameter("sid");

String email = request.getParameter("email");
String f_name = request.getParameter("fname");
String m_name = request.getParameter("mname");
String course = request.getParameter("course");
String mobile = request.getParameter("mobile");
String address = request.getParameter("address");
String password = request.getParameter("pass");

String gender = request.getParameter("gender");

Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");

Statement st = co.createStatement();
st.executeUpdate("insert into student_signup values('"+name+"','"+sid+"','"+email+"','"+f_name+"','"+m_name+"','"+course+"','"+mobile+"','"+address+"','"+password+"','"+gender+"')");

co.close();

%>
</body>
</html>









STUDENT_LOGIN.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"rel="stylesheet"id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>STUDENT LOGIN</title>
		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
<link rel="stylesheet"href="css/Student_Signup.css">	
</head>
<body>
<div class="container">
<div class="d-flex justify-content-center h-100">
<div class="card">
<div class="card-header">
<h3>Sign In</h3>
				
</div>
<div class="card-body">
<form action="Student_Login_Handler.jsp"method="post">
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-user"></i></span>
</div>
<input type="text"name="email"class="form-control"placeholder="Email">
						
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-key"></i></span>
</div>
<input type="password"name="pass"class="form-control"placeholder="password">
</div>
<div class="row align-items-center remember">
<input type="checkbox">Remember Me
</div>
<div class="form-group">
<input type="submit"value="Login"class="btn float-right login_btn">
</div>
</form>
</div>
<div class="card-footer">
<div class="d-flex justify-content-center links">
Don't have an account?<a href="Student_Signup.jsp">Sign Up</a>
</div>
<div class="d-flex justify-content-center">
<a href="#">Forgot your password?</a>
</div>
</div>
</div>
</div>
</div>
</body>
</html>











STUDENT_LOGIN_HANDLER.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int flag =0;

Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");
Statement st = co.createStatement();

String e = request.getParameter("email");
String p = request.getParameter("pass");
session.setAttribute("myuser",e);

ResultSet rs = st.executeQuery("select * from student_signup");

while(rs.next())
{
	String demail = rs.getString("email");
	String dpassword = rs.getString("password");
    String dname =rs.getString("name");
    String dsid = rs.getString("sid");
if(e.equals(demail) && p.equals(dpassword) )
{
flag = 1; 

session.setAttribute("dname",dname);
session.setAttribute("dsid", dsid);
break;
}
}
if(flag==1)
{
	
response.sendRedirect("Student_Dashboard.jsp");

}
else
{

response.sendRedirect("Student_Login.jsp");

}
co.close();

%>
Today's Date : <%= (newjava.util.Date()).toLocaleString()%>

</body>
</html>
STUDENT_DASHBOARD.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>STUDENT DASHBOARD</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"rel="stylesheet"id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
<meta name="viewport"content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"rel="stylesheet">
<link rel="stylesheet"href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"href="css/animate.css">
<link rel="stylesheet"href="css/owl.carousel.min.css">
<link rel="stylesheet"href="css/owl.theme.default.min.css">
<link rel="stylesheet"href="css/magnific-popup.css">
<link rel="stylesheet"href="css/aos.css">
<link rel="stylesheet"href="css/ionicons.min.css">
<link rel="stylesheet"href="css/bootstrap-datepicker.css">
<link rel="stylesheet"href="css/jquery.timepicker.css">
<link rel="stylesheet"href="css/flaticon.css">
<link rel="stylesheet"href="css/icomoon.css">
<link rel="stylesheet"href="css/style.css">

</head>
<body>
<% String n = (String)session.getAttribute("dname"); %>
<% String i = (String)session.getAttribute("dsid"); %>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"id="ftco-navbar">
<div class="container">
<a class="navbar-brand"href="index.html"><i class="flaticon-books"></i>Online 
Library Management System <br><small>Place For Study</small></a>
<button class="navbar-toggler"type="button"data-toggle="collapse"data-target="#ftco-nav"aria-controls="ftco-nav"aria-expanded="false"aria-label="Toggle navigation">
<span class="oi oi-menu"></span> Menu
</button>

<div class="collapse navbar-collapse"id="ftco-nav">
<ul class="navbar-nav ml-auto">
<li class="nav-item active"><a href="index.html"class="nav-link">Home</a></li>
<li class="nav-item"><a href="about.html"class="nav-link">About</a></li>
<li class="nav-item"><a href="course.html"class="nav-link">Courses</a></li>
<li class="nav-item"><a href="teacher.html"class="nav-link">Teacher</a></li>
<li class="nav-item"><a href="contact.html"class="nav-link">Contact</a></li>
<li class="nav-item"><a href="contact.html"class="nav-link"><%=n %></a></li>
</ul>
</div>
</div>
</nav>
<!-- END nav -->

<div class="hero-wrap"style="background-image: url('images/bg_1.jpg'); background-attachment:fixed;">
<div class="overlay"></div>
<div class="container">
<div class="row no-gutters slider-text align-items-center justify-content-center"data-scrollax-parent="true">
<div class="col-md-8 ftco-animate text-center">
<h1 class="mb-4">A Library is not a Luxury but one of the Necessities of Life</h1>
<p><a href="Issued_Book.jsp"class="btn btn-primary px-4 py-3">ISSUED BOOKS</a>
<a href ="Request_Book.jsp"class="btn btn-secondary px-4 py-3">REQUEST BOOK</a>
</div>
</div>
</div>
</div>

<section class="ftco-search-course">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="courseSearch-wrap d-md-flex flex-column-reverse">
<div class="full-wrap d-flex ftco-animate">
<div class="one-third order-last p-5">
<span>Know what you're after?</span>
<h3>I want to study</h3>
<form action="#"class="course-search-form">
<div class="form-group d-flex">
<input type="text"class="form-control"placeholder="Type a course you want to study">
<input type="submit"value="Search"class="submit">
</div>
</form>
<p>Just Browsing?<a href="#"> See all courses</a></p>
</div>
<div class="one-forth order-first img"style="background-image: url(images/image_1.jpg);"></div>
</div>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section">
<div class="container">
<div class="row">
<div class="col-md-4 d-flex align-self-stretch ftco-animate">
<div class="media block-6 services p-3 py-4 d-block text-center">
<div class="icon d-flex justify-content-center align-items-center mb-3"><span class="flaticon-exam"></span></div>
<div class="media-body px-3">
<h3 class="heading">Admission</h3>
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic.</p>
</div>
</div>
</div>
<div class="col-md-4 d-flex align-self-stretch ftco-animate">
<div class="media block-6 services p-3 py-4 d-block text-center">
<div class="icon d-flex justify-content-center align-items-center mb-3"><span class="flaticon-blackboard"></span></div>
<div class="media-body px-3">
<h3 class="heading">Notice Board</h3>
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic.</p>
</div>
</div>
</div>
<div class="col-md-4 d-flex align-self-stretch ftco-animate">
<div class="media block-6 services p-3 py-4 d-block text-center">
<div class="icon d-flex justify-content-center align-items-center mb-3"><span class="flaticon-books"></span></div>
<div class="media-body px-3">
<h3 class="heading">Our Library</h3>
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic.</p>
</div>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section-3 img"style="background-image: url(images/bg_3.jpg);">
<div class="overlay"></div>
<div class="container">
<div class="row d-md-flex justify-content-center">
<div class="col-md-9 about-video text-center">
<h2 class="ftco-animate">Online Library Management System an Extensive Collection 
of Quotations by Famous Authors,Celebrities and Reduce Work Load </h2>
<div class="video d-flex justify-content-center">
<a href="https://vimeo.com/45830194"class="button popup-vimeo d-flex justify-content-center align-items-center"><spanclass="ion-ios-play"></span></a>
</div>
</div>
</div>
</div>
</section>
<section class="ftco-counter bg-light"id="section-counter">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-10">
<div class="row">
<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18 text-center">
<div class="text">
<strong class="number"data-number="2580">0</strong>
<span>Satisfied Students</span>
</div>
</div>
</div>
<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18 text-center">
<div class="text">
<strong class="number"data-number="1200">0</strong>
<span>Subjects</span>
</div>
</div>
/div&gt;
<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18 text-center">
<div class="text">
<strong class="number"data-number="10400">0</strong>
<span>Books</span>
</div>
</div>
</div>
<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18 text-center">
<div class="text">
<strong class="number"data-number="200">0</strong>
<span>Projects</span>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section testimony-section">
<div class="container">
<div class="row justify-content-center mb-5 pb-3">
<div class="col-md-7 heading-section ftco-animate text-center">
<h2 class="mb-4">What Our Student Says</h2>
</div>
</div>
<div class="row">
<div class="col-md-12 ftco-animate">
<div class="carousel-testimony owl-carousel">
<div class="item">
<div class="testimony-wrap text-center">
<div class="user-img mb-5"style="background-image: url(images/nivo.jpeg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="icon-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-5">Far far away, behind the word mountains, far from the countries 
Vokalia and Consonantia, there live the blind texts. Separated they live in 
Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p class="name">Dennis Green</p>
<span class="position">CSE Student</span>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap text-center">
<div class="user-img mb-5"style="background-image: url(images/him.jpeg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="icon-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-5">Far far away, behind the word mountains, far from the countries 
Vokalia and Consonantia, there live the blind texts. Separated they live in 
Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p class="name">Dennis Green</p>
<span class="position">Math Student</span>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap text-center">
<div class="user-img mb-5"style="background-image: url(images/person_3.jpg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="icon-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-5">Far far away, behind the word mountains, far from the countries 
Vokalia and Consonantia, there live the blind texts. Separated they live in 
Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p class="name">Dennis Green</p>
<span class="position">Science Students</span>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap text-center">
<div class="user-img mb-5"style="background-image: url(images/person_3.jpg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="icon-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-5">Far far away, behind the word mountains, far from the countries 
Vokalia and Consonantia, there live the blind texts. Separated they live in 
Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p class="name">Dennis Green</p>
<span class="position">English Student</span>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section bg-light">
<div class="container">
<div class="row justify-content-center mb-5 pb-3">
<div class="col-md-7 heading-section ftco-animate text-center">
<h2 class="mb-4">Our Experience Advisor</h2>
</div>
</div>
<div class="row">
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_1.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_2.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a><a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a><a href="#"class="d-flex justify-content-center align-items-center"><spanclass="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_3.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
</div>
</div>
</section>

<footer class="ftco-footer ftco-bg-dark ftco-section img"style="background-image: url(images/bg_2.jpg); background-attachment:fixed;">
<div class="overlay"></div>
<div class="container">
<div class="row mb-5">
<div class="col-md-3">
<div class="ftco-footer-widget mb-4">
<h2><a class="navbar-brand"href="index.html"><i class="flaticon-university"></i>
Online Library Management System<br><small></small></a></h2>
<p>Far far away, behind the word mountains, far from the countries Vokalia and 
Consonantia, there live the blind texts.</p>
<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
</ul>
</div>
</div>
<div class="col-md-3">

</div>
<div class="col-md-2">
<div class="ftco-footer-widget mb-4 ml-md-4">
<h2 class="ftco-heading-2">Site Links</h2>
<ul class="list-unstyled">
<li><a href="#"class="py-2 d-block">Home</a></li>
<li><a href="#"class="py-2 d-block">About</a></li>
<li><a href="#"class="py-2 d-block">Courses</a></li>
<li><a href="#"class="py-2 d-block">Students</a></li>
<li><a href="#"class="py-2 d-block">Video</a></li>
</ul>
</div>
</div>
<div class="col-md-3">
<div class="ftco-footer-widget mb-4">
<h2 class="ftco-heading-2">Any Queries...</h2>
<div class="block-23 mb-3">
<ul>
<li><span class="icon icon-map-marker"></span><span class="text">930 
IndraNagarBhoor,Bulandshahr,UP,India</span></li>
<li><a href="#"><span class="icon icon-phone"></span><span class="text">+91 
6395836797</span></a></li>
<li><a href="#"><span class="icon icon-envelope"></span><span class="text">
info@olms.com</span></a></li>
</ul>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-md-12 text-center">

<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright ©<script>document.write(new Date().getFullYear());</script> All rights 
reserved | Online Library Management System
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
</div>
</div>
</div>
</footer>



<!-- loader -->
<div id="ftco-loader"class="show fullscreen"><svg class="circular"width="48px"height="48px"><circle class="path-bg"cx="24"cy="24"r="22"fill="none"stroke-width="4"stroke="#eeeeee"/><circle class="path"cx="24"cy="24"r="22"fill="none"stroke-width="4"stroke-miterlimit="10"stroke="#F96D00"/></svg></div>


<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>













ISSUED_BOOK.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<%@pageimport="JavaBeans.BD"%>
<%@pageimport="java.util.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int flag=0;
//String sid = (String)session.getAttribute("dsid");
//String id = request.getParameter("sid");
String i = (String)session.getAttribute("dsid"); 
Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");
Statement st = co.createStatement();
 ResultSet rs = st.executeQuery("select * from issue_book where sid='"+i+"'");


 ArrayList<BD> alldata = new ArrayList<BD>();

while(rs.next())
{
	int isbn = rs.getInt("isbn");
	int sid = rs.getInt("sid");
	String btitle = rs.getString("btitle");
	String issuedate = rs.getString("issuedate");
	String author = rs.getString("author");
	
BD d = newBD();

d.setIsbn(isbn);
d.setSid(sid);
d.setBtitle(btitle);
d.setIssuedate(issuedate);
d.setAuthor(author);
alldata.add(d);
}

session.setAttribute("mydata",alldata);
response.sendRedirect("Issued_Book_Show.jsp");

co.close();
%>
</body>
</html>




ISSUED_BOOK_SHOW.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<%@pageimport="JavaBeans.BD"%>
<%@pageimport="java.util.*"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport"content="width=device-width, initial-scale=1">
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
<table class="table">
<thead>
<tr class="danger">
<th>ISBN</th>
<th>STUDENT ID</th>
<th>BOOK TITLE</th>
<th>ISSUE DATE</th>
<th>AUTHOR</th>
</tr>
</thead>
<tbody>
<%

ArrayList<BD> list = (ArrayList<BD>)session.getAttribute("mydata");

for(BD d : list)
{
int isbn = d.getIsbn();
int sid = d.getSid();
String btitle = d.getBtitle();
String issuedate = d.getIssuedate();
String author = d.getAuthor();
	out.println("<tr class='info'>");
	out.println("<td>");
	out.println(isbn);
	out.println("</td>"); 
	out.println("<td>");
	out.println(sid);
	out.println("</td>"); 
	out.println("<td>");
	out.println(btitle);
	out.println("</td>"); 
	out.println("<td>");
	out.println(issuedate);
	out.println("</td>"); 
	out.println("<td>");
	out.println(author);
	out.println("</td>"); 
	
	out.println("</tr>");
	
}
%>
</tbody>
</table>
</div>
</body>
</html>











TEACHER_SIGNUP.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>TEACHER SIGNUP</title>

		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
	<link rel="stylesheet"href="css/Student_Signup.css">
</head>
<body>
<div class="container">
<div class="d-flex justify-content-center h-100">
<div class="card">
<div class="card-header">
<h3>FACULTY SIGN UP</h3>
</div>
<div class="card-body">
<form action="Teacher_Signup_Handler.jsp"method="post">
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-envelope"></i></span>
</div>
<input type="number"name="id"class="form-control"placeholder="Id">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-user"></i></span>
</div>
<input type="text"name="name"class="form-control"placeholder="Name">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-user"></i></span>
</div>
<input type="text"name="fname"class="form-control"placeholder="Father's Name">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-user"></i></span>
</div>
<input type="text"name="mname"class="form-control"placeholder="Mother's Name">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-list"></i></span>
</div>
<select name="course"class="form-control">
<option value="00">Choose Branch</option>
<option value="01">BCA</option>
<option value="02">BBA</option>
<option value="03">BSC</option>
<option value="04">B.COM</option>
<option value="05">B.ED</option>
</select>
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-list"></i></span>
</div>

<select name="subject"class="form-control input-lg">
<option value="00">Choose Subject</option>
<option value="02">Computer Network Security</option>
<option value="02">Information System</option>
<option value="02">E-Commerce</option>
<option value="02">Knowledge Management</option>
<option value="02">Introduction to DBMS</option>
<option value="02">Java Programming and Dynamic Webpage Design</option>
<option value="02">Computer Network</option>
<option value="02">Numerical Methods</option>
<option value="02">Operating System</option>
<option value="02">Software Engineering</option>
<option value="02">Optimization Technique</option>
<option value="02">Mathematics-III</option>
<option value="02">Computer Graphics and Multimedia Application</option>
<option value="02">Object Oriented Programming Using C++</option>
<option value="02">Data Structure Using C &amp; C++</option>
<option value="02">Business Economics</option>
<option value="02">Elements Of Statistics</option></select>
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-phone-square"></i></span>
</div>
<input type="number"name="mobile"class="form-control"placeholder="Mobile No."></div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-map-marker"></i></span>
</div>
<input type="text"name="address"class="form-control"placeholder="Address">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-key"></i></span>
</div>
<input type="password"name="pass"class="form-control"placeholder="Password">
</div>
<div class="form-group">
<input type="submit"value="SUBMIT"class="btn float-center login_btn">
</div>
</form>
</div>
</div>
</div>
</body>
</html>








TEACHER_SIGNUP_HANDLER.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>TEACHER SIGNUP HANDLER</title>
</head>
<body>
<%

String id = request.getParameter("id");
String name = request.getParameter("name");
String fname = request.getParameter("fname");
String mname = request.getParameter("mname");
String course = request.getParameter("course");
String subject = request.getParameter("subject");
String mobile = request.getParameter("mobile");
String address = request.getParameter("address");
String password = request.getParameter("pass");

Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");

Statement st = co.createStatement();
st.executeUpdate("insert into teacher_signup values('"+id+"','"+name+"','"+fname+"','"+mname+"','"+course+"','"+subject+"','"+mobile+"','"+address+"','"+password+"')");

co.close();

%>
</body>
</html>









TEACHER_LOGIN.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>TEACHER LOGIN</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"rel="stylesheet"id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
	<link rel="stylesheet"href="css/Student_Signup.css">
	

</head>
<body>
<div class="container">
<div class="d-flex justify-content-center h-100">
<div class="card">
<div class="card-header">
<h3>Sign In</h3>
				
</div>
<div class="card-body">
<form action="Teacher_Login_Handler.jsp"method="post">
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-user"></i></span>
</div>
<input type="text"name="id"class="form-control"placeholder="ID">
						
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-key"></i></span>
</div>
<input type="password"name="pass"class="form-control"placeholder="password">
</div>
<div class="row align-items-center remember">
<input type="checkbox">Remember Me
</div>
<div class="form-group">
<input type="submit"value="Login"class="btn float-right login_btn">
</div>
</form>
</div>
<div class="card-footer">
<div class="d-flex justify-content-center links">
Don't have an account?<a href="Teacher_Signup.jsp">Sign Up</a>
</div>
<div class="d-flex justify-content-center">
<a href="#">Forgot your password?</a>
</div>
</div>
</div>
</div>
</div>
</body>
</html>












TEACHER_LOGIN_HANDLER.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int flag =0;

Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");
Statement st = co.createStatement();
String i = request.getParameter("id");
String p = request.getParameter("pass");
session.setAttribute("myuser",i);

ResultSet rs = st.executeQuery("select * from teacher_signup");

while(rs.next())
{
	String did = rs.getString("id");
	String dpassword = rs.getString("password");
    String dname =rs.getString("name");
if(i.equals(did) && p.equals(dpassword) )
{
flag = 1; 

session.setAttribute("dname",dname);
break;
}
}
if(flag==1)
{

response.sendRedirect("Student_Dashboard.jsp");

}
else
{

response.sendRedirect("Teacher_Login.jsp");

}
co.close();

%>

</body>
</html>










TEACHER.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>TEACHER</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"id="ftco-navbar">
<div class="container">
<a class="navbar-brand"href="index.html"><i class="flaticon-university"></i>Online 
Library Management System<br></a>
<button class="navbar-toggler"type="button"data-toggle="collapse"data-target="#ftco-nav"aria-controls="ftco-nav"aria-expanded="false"aria-label="Toggle navigation">
<span class="oi oi-menu"></span> Menu
</button>

<div class="collapse navbar-collapse"id="ftco-nav">
<ul class="navbar-nav ml-auto">
<li class="nav-item"><a href="Admin_Dashboard.jsp"class="nav-link">Home</a></li>
<li class="nav-item"><a href="About.jsp"class="nav-link">About</a></li>
<li class="nav-item"><a href="course.html"class="nav-link">Courses</a></li>
<li class="nav-item active"><a href="Teacher.jsp"class="nav-link">Teacher</a></li>
<li class="nav-item"><a href="blog.html"class="nav-link">Blog</a></li>
<li class="nav-item"><a href="event.html"class="nav-link">Events</a></li>
<li class="nav-item"><a href="Contact.jsp"class="nav-link">Contact</a></li>
<li class="nav-item cta"><a href="Contact.jsp   "class="nav-link"><span>Apply Now!</span></a></li>
</ul>
</div>
</div>
</nav>
<!-- END nav -->

<div class="hero-wrap hero-wrap-2"style="background-image: url('images/bg_2.jpg'); background-attachment:fixed;">
<div class="overlay"></div>
<div class="container">
<div class="row no-gutters slider-text align-items-center justify-content-center"data-scrollax-parent="true">
<div class="col-md-8 ftco-animate text-center">
<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span><span>Teacher</span></p>
<h1 class="mb-3 bread">Teacher</h1>
</div>
</div>
</div>
</div>

<section class="ftco-section bg-light">
<div class="container">
<div class="row justify-content-center mb-5 pb-3">
<div class="col-md-7 heading-section ftco-animate text-center">
<h2 class="mb-4">Our Experience Advisor</h2>
</div>
</div>
<div class="row">
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_1.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div accesskey class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_2.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_3.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_4.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_5.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_6.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_7.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_8.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however  a small line of blind text by  the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_9.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
</div>
</div>
</section>
		
<section class="ftco-section-parallax">
<div class="parallax-img d-flex align-items-center">
<div class="container">
<div class="row d-flex justify-content-center">
<div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
<h2>Subcribe to our Newsletter</h2>
<p>Far far away, behind the word mountains, far from the countries Vokalia and 
Consonantia, there live the blind texts. Separated they live in</p>
<div class="row d-flex justify-content-center mt-5">
<div class="col-md-8">
<form action="#"class="subscribe-form">
<div class="form-group d-flex">
<input type="text"class="form-control"placeholder="Enter email address">
<input type="submit"value="Subscribe"class="submit px-3">
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<footer class="ftco-footer ftco-bg-dark ftco-section img"style="background-image: url(images/bg_2.jpg); background-attachment:fixed;">
<div class="overlay"></div>
<div class="container">
<div class="row mb-5">
<div class="col-md-3">
<div class="ftco-footer-widget mb-4">
<h2><a class="navbar-brand"href="index.html"><i class="flaticon-university"></i>
Online Library Management System<br><small></small></a></h2>
<p>Far far away, behind the word mountains, far from the countries Vokalia and 
Consonantia, there live the blind texts.</p>
<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
</ul>
</div>
</div>
<div class="col-md-3">
</div>
<div class="col-md-2">
<div class="ftco-footer-widget mb-4 ml-md-4">
<h2 class="ftco-heading-2">Site Links</h2>
<ul class="list-unstyled">
<li><a href="#"class="py-2 d-block">Home</a></li>
<li><a href="#"class="py-2 d-block">About</a></li>
<li><a href="#"class="py-2 d-block">Courses</a></li>
<li><a href="#"class="py-2 d-block">Students</a></li>
<li><a href="#"class="py-2 d-block">Video</a></li>
</ul>
</div>
</div>
<div class="col-md-3">
<div class="ftco-footer-widget mb-4">
<h2 class="ftco-heading-2">Any Queries...</h2>
<div class="block-23 mb-3">
<ul>
<li><span class="icon icon-map-marker"></span><span class="text">1107 
 rajnagar chandpur road bulandshahr</span>
<li><a href="#"><span calss="phone"></span><span class="text-black-50">
6395836797</span></a></li>          
<li><a ref="#"><span class="icon icon-envelope"></span><span class="text">
info@olms.com</span></a></li>
</ul>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-md-12 text-center">
<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright ©<script>document.write(new Date().getFullYear());</script> All rights 
reserved | Online Library Management System
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
</div>
</div>
</div>
</footer>

<!-- loader -->
<div id="ftco-loader"class="show fullscreen"><svg class="circular"width="48px"height="48px"><circle class="path"cx="24"cy="24"r="22"fill="none"stroke-width="4"stroke="#eeeeee"/><circleclass="path"cx="24"cy="24"r="22"fill="none"stroke-width="4"stroke-miterlimit="10"stroke="#F96D00"/></svg></div>

<script sce="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>"
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>













ADMIN_LOGIN.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>ADMIN LOGIN</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"rel="stylesheet"id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
	
</head>
<body>
<div class="container">
<div class="d-flex justify-content-center h-100">
<div class="card">
<div class="card-header">
<h3>ADMIN LOGIN</h3>
				
</div>
<div  class="card-body">
<form action="Admin_Login_Handler.jsp"method="post">
<div  class="input-group form-group">
<div  class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-user"></i></span>
</div>
<input type="text"name="id"class="form-control"placeholder="ID">
						
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-key"></i></span>
</div>
<input tyoe="password"name="pass"class="form-control"placeholder="password">
</div>
<div class="row align-items-center remember">
<input type="checkbox">Remember Me
</div>
<div class="form-group">
<input type="submit"value="Login"class="btn float-right login_btn">
</div>
</form>
</div>
<div class="card-footer">
<div class="d-flex justify-content-center links">
Don't have an account?<a href="#">Sign Up </a>
</div>
<div class="d-flex justify-content-center">
<a href="#">Forgot your password?</a>
</div>
</div>
</div>
</div>
</div>
</body>
</html>






















 

ADMIN_LOGIN_HANDLER.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int flag =0;

Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");
Statement st = co.createStatement();

String i = request.getParameter("id");
String p = request.getParameter("pass");
session.setAttribute("myuser",i);
ResultSet rs = st.executeQuery("select * from admin");

while(rs.next())
{
	String did = rs.getString("id");
	String dpassword = rs.getString("password");
if(i.equals(did) && p.equals(dpassword) )
{
flag = 1; 

session.setAttribute("did", did);
break;
}
}
if(flag==1)
{

response.sendRedirect("Admin_Dashboard.jsp");

}
else
{

response.sendRedirect("Admin_Login.jsp");

}
co.close();

%>

</body>
</html>



ADMIN_DASHBOARD.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>ADMIN DASHBOARD</title>

		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">
    &quot;WebContent/Admin_Dashboard.jsp&quot;
	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
<meta name="viewport"content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"rel="stylesheet">
<link rel="stylesheet"href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"href="css/animate.css">
<link rel="stylesheet"href="css/owl.carousel.min.css">
<link rel="stylesheet"href="css/owl.theme.default.min.css">
<link rel="stylesheet"href="css/magnific-popup.css">
<link rel="stylesheet"href="css/aos.css">
<link rel="stylesheet"href="css/ionicons.min.css">
<link rel="stylesheet"href="css/bootstrap-datepicker.css">
<link rel="stylesheet"href="css/jquery.timepicker.css">
<link rel="stylesheet"href="css/flaticon.css">
<link rel="stylesheet"href="css/icomoon.css">
<link rel="stylesheet"href="css/style.css">

</head>
<body>
<% String id = (String)session.getAttribute("did"); %>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"id="ftco-navbar">
<div class="container">
<a class="navbar-brand"href="Admin_Dashboard.jsp"><i class="flaticon-university"></i>
Online Library Management System <br><small>Place For Study</small></a>
<button class="navbar-toggler"type="button"data-toggle="collapse"data-target="#ftco-nav"aria-controls="ftco-nav"aria-expanded="false"aria-label="Toggle navigation">
<span class="oi oi-menu"></span>
</button>
<div class="collapse navbar-collapse"id="ftco-nav">
<ul class="navbar-nav ml-auto">
<li class="nav-item active"><a href="Admin_Dashboard.jsp"class="nav-link">Home</a></li>
<li class="nav-item"><a href="About.jsp"class="nav-link">About</a></li>
<li class="nav-item"><a href="course.html"class="nav-link">Courses</a></li>
<li class="nav-item"><a href="teacher.html"class="nav-link">Teacher</a></li>
<li class="nav-item"><a href="Contact.jsp"class="nav-link">Contact</a></li>
<li class="nav-item"><a href="#"class="nav-link"><%=id %></a></li>
</ul>
</div>
</div>
</nav>
<!-- END nav -->

<div class="hero-wrap"style="background-image: url('images/bg_1.jpg'); background-attachment:fixed;">
<div class="overlay"></div>
<div class="container">
<div class="row no-gutters slider-text align-items-center justify-content-center"data-scrollax-parent="true">
<div class="col-md-8 ftco-animate text-center">
<h1 class="mb-4">A Library is not a Luxury but one of the Necessities of Life</h1>
<p><a href="Add_Book.jsp"class="btn btn-primary px-4 py-3">Add Book</a>
<a href="Delete_Book.jsp"class="btn btn-secondary px-4 py-3">Delete Book</a>
<a href="Issue_Book.jsp"class="btn btn-secondary px-4 py-3">Issue Book</a>
<a href="Return_Book.jsp"class="btn btn-secondary px-4 py-3">Return Book</a></p>
</div>
</div>
</div>
</div>

<section class="ftco-search-course">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="courseSearch-wrap d-md-flex flex-column-reverse">
<div class="full-wrap d-flex ftco-animate">
<div class="one-third order-last p-5">
<span>Know what you're after?</span>
<h3>I want to study</h3>
<form action="#"class="course-search-form">
<div class="form-group d-flex">
<input type="text"class="form-control"placeholder="Type a course you want to study">
<input type="submit"value="Search"class="submit">
</div>
</form>
<p>Just Browsing?<a href="#"> See all courses</a></p>
</div>
<div class="one-forth order-first img"style="background-image: url(images/image_1.jpg);"></div>
</div>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section">
<div class="container">
<div class="row">
<div class="col-md-4 d-flex align-self-stretch ftco-animate">
<div class="media block-6 services p-3 py-4 d-block text-center">
<div class="icon d-flex justify-content-center align-items-center mb-3"><span class="flaticon-exam"></span></div>
<div class="media-body px-3">
<h3 class="heading">Admission</h3>
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic.</p>
</div>
</div>
</div>
<div class="col-md-4 d-flex align-self-stretch ftco-animate">
<div class="media block-6 services p-3 py-4 d-block text-center">
<div class="icon d-flex justify-content-center align-items-center mb-3"><span class="flaticon-blackboard"></span></div>
<div class="media-body px-3">
<h3 class="heading">Notice Board</h3>
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic.</p>
</div>
</div>
</div>
<div class="col-md-4 d-flex align-self-stretch ftco-animate">
<div class="media block-6 services p-3 py-4 d-block text-center">
<div class="icon d-flex justify-content-center align-items-center mb-3"><span class="flaticon-books"></span></div>
<div class="media-body px-3">
<h3 class="heading">Our Library</h3>
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic.</p>
</div>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section-3 img"style="background-image: url(images/bg_3.jpg);">
<div class="overlay"></div>
<div class="container">
<div class="row d-md-flex justify-content-center">
<div class="col-md-9 about-video text-center">
<h2 class="ftco-animate">Online Library Management System an Extensive Collection 
of Quotations by Famous Authors,Celebrities and Reduce Work Load </h2>
<div class="video d-flex justify-content-center">
<a href="https://vimeo.com/45830194"class="button popup-vimeo d-flex justify-content-center align-items-center"><spanclass="ion-ios-play"></span></a>
</div>
</div>
</div>
</div>
</section>
<section class="ftco-counter bg-light"id="section-counter">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-10">
<div class="row">
<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18 text-center">
<div class="text">
<strong class="number"data-number="2580">0</strong>
<span>Satisfied Students</span>
</div>
</div>
</div>
<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18 text-center">
<div class="text">
<strong class="number"data-number="1200">0</strong>
<span>Subjects</span>
</div>
</div>
</div>
<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18 text-center">
<div class="text">
<strong class="number"data-number="10400">0</strong>
<span>Books</span>
</div>
</div>
</div>
<div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18 text-center">
<div class="text">
<strong class="number"data-number="200">0</strong>
<span>Projects</span>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section testimony-section">
<div class="container">
<div class="row justify-content-center mb-5 pb-3">
<div class="col-md-7 heading-section ftco-animate text-center">
<h2 class="mb-4">What Our Student Says</h2>
</div>
</div>
<div class="row">
<div class="col-md-12 ftco-animate">
<div class="carousel-testimony owl-carousel">
<div class="item">
<div class="testimony-wrap text-center">
<div class="user-img mb-5"style="background-image: url(nivo.jpg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="icon-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-5">Far far away, behind the word mountains, far from the countries 
Vokalia and Consonantia, there live the blind texts. Separated they live in 
Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p class="name">Dennis Green</p>
<span class="position">CSE Student</span>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap text-center">
<div class="user-img mb-5"style="background-image: url(images/person_2.jpg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="icon-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-5">Far far away, behind the word mountains, far from the countries 
Vokalia and Consonantia, there live the blind texts. Separated they live in 
Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p class="name">Dennis Green</p>
<span class="position">CSE Student</span>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap text-center">
<div class="user-img mb-5"style="background-image: url(images/person_3.jpg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="icon-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-5">Far far away, behind the word mountains, far from the countries 
Vokalia and Consonantia, there live the blind texts. Separated they live in 
Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p class="name">Dennis Green</p>
<span class="position">CSE Student</span>
</div>
</div>
</div>
<div class="item">
<div class="testimony-wrap text-center">
<div class="user-img mb-5"style="background-image: url(images/person_3.jpg)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="icon-quote-left"></i>
</span>
</div>
<div class="text">
<p class="mb-5">Far far away, behind the word mountains, far from the countries 
Vokalia and Consonantia, there live the blind texts. Separated they live in 
Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
<p class="name">Dennis Green</p>
<span class="position">English Student</span>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section bg-light">
<div class="container">
<div class="row justify-content-center mb-5 pb-3">
<div class="col-md-7 heading-section ftco-animate text-center">
<h2 class="mb-4">Our Experience Advisor</h2>
</div>
</div>
<div class="row">
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_1.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_2.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
<div class="col-lg-4 mb-sm-4 ftco-animate">
<div class="staff">
<div class="d-flex mb-4">
<div class="img"style="background-image: url(images/person_3.jpg);"></div>
<div class="info ml-4">
<h3><a href="teacher-single.html">IvanJacobson</a></h3>
<span class="position">CSE Teacher</span>
<p class="ftco-social d-flex">
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-twitter"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-facebook"></span></a>
<a href="#"class="d-flex justify-content-center align-items-center"><span class="icon-instagram"></span></a>
</p>
</div>
</div>
<div class="text">
<p>Even the all-powerful Pointing has no control about the blind texts it is an 
almost unorthographic life One day however a small line of blind text by the 
name</p>
</div>
</div>
</div>
</div>
</div>
</section>

<footer class="ftco-footer ftco-bg-dark ftco-section img"style="background-image: url(images/bg_2.jpg); background-attachment:fixed;">
<div class="overlay"></div>
<div class="container">
<div class="row mb-5">
<div class="col-md-3">
<div class="ftco-footer-widget mb-4">
<h2><a class="navbar-brand"href="index.html"><i class="flaticon-university"></i>
Online Library Management System<br><small></small></a></h2>
<p>Far far away, behind the word mountains, far from the countries Vokalia and 
Consonantia, there live the blind texts.</p>
<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
</ul>
</div>
</div>
<div class="col-md-3">

</div>
<div class="col-md-2">
<div class="ftco-footer-widget mb-4 ml-md-4">
<h2 class="ftco-heading-2">Site Links</h2>
<ul class="list-unstyled">
<li><a href="#"class="py-2 d-block">Home</a></li>
<li><a href="#"class="py-2 d-block">About</a></li>
<li><a href="#"class="py-2 d-block">Courses</a></li>
<li><a href="#"class="py-2 d-block">Students</a></li>
<li><a href="#"class="py-2 d-block">Video</a></li>
</ul>
</div>
</div>
<div class="col-md-3">
<div class="ftco-footer-widget mb-4">
<h2 class="ftco-heading-2">Any Queries...</h2>
<div class="block-23 mb-3">
<ul>
<li><span class="icon icon-map-marker"></span><span class="text">930 
IndraNagarBhoor,Bulandshahr,UP,India</span></li>
<li><a href="#"><span class="icon icon-phone"></span><span class="text">+91 
6395836797</span></a></li>
<li><a href="#"><span class="icon icon-envelope"></span><span class="text">
info@olms.com</span></a></li>
</ul>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-md-12 text-center">

<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright ©<script>document.write(new Date().getFullYear());</script> All rights 
reserved | Online Library Management System
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
</div>
</div>
</div>
</footer>

<!-- loader -->
<div id="ftco-loader"class="show fullscreen"><svg class="circular"width="48px"height="48px"><circle class="path-bg"cx="24"cy="24"r="22"fill="none"stroke-width="4"stroke="#eeeeee"/><circleclass="path"cx="24"cy="24"r="22"fill="none"stroke-width="4"stroke-miterlimit="10"stroke="#F96D00"/></svg></div>

<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>
















ADD_BOOK.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>ADD BOOK</title>

		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
	<link rel="stylesheet"href="css/Student_Signup.css">
</head>
<body>
<div class="container">
<div class="d-flex justify-content-center h-100">
<div class="card">
<div class="card-header">
<h3>ADD BOOK</h3>
</div>
<div class="card-body">
<form action="Add_Book_Handler.jsp"method="post">
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-envelope"></i></span>
</div>
<input type="number"name="isbn"class="form-control"placeholder="ISBN">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<input type="text"name="btitle"class="form-control"placeholder="Book Title">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<select name="category"class="form-control input-lg">
<option>BOOK CATEGORY</option>
<option>ARTS AND MUSIC</option>
<option>BIOGRAPHIES</option>
<option>BUSINESS</option>
<option>EDUCATION</option>
<option>SPORTS</option>
<option>TRAVEL</option>
</select>	
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<input type="number"name="lcharge"class="form-control"placeholder="Late Charge">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<select name="status"class="form-control input-lg">
<option>BOOK STATUS</option>
<option>AVAILABLE</option>
<option>NOT AVAILABLE</option>
</select>	
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<input type="text"name="author"class="form-control"placeholder="Book Author">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<input type="text"name="publisher"class="form-control"placeholder="Book Publisher">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<select name="subject"class="form-control input-lg">
<option>CHOOSE SUBJECT</option>
<option>Computer Network Security</option>
<option>Information System</option>
<option>E-Commerce</option>
<option>Knowledge Management</option>
<option>Introduction to DBMS</option>
<option>Java Programming and Dynamic Webpage Design</option>
<option>Computer Network</option>
<option>Numerical Methods</option>
<option>Operating System</option>
<option>Software Engineering</option>
<option>Optimization Technique</option>
<option>Mathematics-III</option>
<option>Computer Graphics and Multimedia Application</option>
<option>Object Oriented Programming Using C++</option>
<option>Data Structure Using C &amp; C++</option>
<option>Business Economics</option>
<option>Elements Of Statistics</option>
</select>
</div>
<div class="form-group">
<input type="submit"value="SUBMIT"class="btn float-center login_btn">
</div>
</form>
</div>
</div>
</div>
</body>
</html>					








ADD_BOOK_HANDLER.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String isbn = request.getParameter("isbn");
String btitle = request.getParameter("btitle");
String category = request.getParameter("category");
String charge = request.getParameter("lcharge");
String status = request.getParameter("status");
String author = request.getParameter("author");
String publisher = request.getParameter("publisher");
String subject = request.getParameter("subject");
Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");
Statement st = co.createStatement();
st.executeUpdate("insert into book values('"+isbn+"','"+btitle+"','"+category+"','"+charge+"','"+status+"','"+author+"','"+publisher+"','"+subject+"')");
co.close();
response.sendRedirect("Add_Book.jsp");
%>

</body>
</html>












DELETE_BOOK.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>DELETE BOOK</title>
		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
	
</head>
<body>
<div class="container">
<div class="d-flex justify-content-center h-100">
<div class="card">
<div class="card-header">
<h3>DELETE BOOK</h3>
				
</div>
<div class="card-body">
<form action="Delete_Book_Fetch.jsp"method="post">
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>

<select name="subject"class="form-control input-lg">
<option>CHOOSE SUBJECT</option>
<option>Computer Network Security</option>
<option>Information System</option>
<option>E-Commerce</option>
<option>Knowledge Management</option>
<option>Introduction to DBMS</option>
<option>Java Programming and Dynamic Webpage Design</option>
<option>Computer Network</option>
<option>Numerical Methods</option>
<option>Operating System</option>
<option>Software Engineering</option>
<option>Optimization Technique</option>
<option>Mathematics-III</option>
<option>Computer Graphics and Multimedia Application</option>
<option>Object Oriented Programming Using C++</option>
<option>Data Structure Using C &amp; C++</option>
<option>Business Economics</option>
<option>Elements Of Statistics</option>
</select>


</div>
<div class="form-group">
<input type="submit"value="Delete"class="btn float-right login_btn">
</div>
</form>
</div>
</div>
</div>
</div>
</body>
</html>

























DELETE_BOOK_FETCH.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<%@pageimport="JavaBeans.Data"%>
<%@pageimport="java.util.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>DELETE BOOK FETCH</title>
</head>
<body>
<%
String s = request.getParameter("subject");

Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");
Statement st = co.createStatement();
 ResultSet rs = st.executeQuery("select * from book where subject='"+s+"'");
 ArrayList<Data> alldata = new ArrayList<Data>();

while(rs.next())
{
	int isbn = rs.getInt("isbn");
	String btitle = rs.getString("b_title");
	String category = rs.getString("category");
	String status = rs.getString("status");
	String author = rs.getString("author");
	String publisher = rs.getString("publisher");
	String subject = rs.getString("subject");
	
	
Data d = newData();

d.setIsbn(isbn);
d.setBtitle(btitle);
d.setCategory(category);
d.setStatus(status);
d.setAuthor(author);
d.setPublisher(publisher);
d.setSubject(subject);

alldata.add(d);
}
session.setAttribute("mydata",alldata);

response.sendRedirect("Delete_Book_Show.jsp");

co.close();
%>
</body>
</html>



DELETE_BOOK_SHOW.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<%@pageimport="JavaBeans.Data"%>
<%@pageimport="java.util.*"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>DELETE BOOK SHOW</title>
<meta name="viewport"content="width=device-width, initial-scale=1">
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
<form action="Delete_Book_Show_Handler.jsp">
<table class="table">
<thead>
<tr class="danger">
<th>SELECT</th>

<th>ISBN</th>
<th>BOOK TITLE</th>
<th>CATEGORY</th>
<th>STATUS</th>
<th>AUTHOR</th>
<th>PUBLISHER</th>

<th>SUBJECT</th>
</tr>
</thead>
<tbody>
<%

ArrayList<Data> list = (ArrayList<Data>)session.getAttribute("mydata");

for(Data d : list)
{
int isbn = d.getIsbn();
String btitle = d.getBtitle();
String category = d.getCategory();
String status = d.getStatus();
String author = d.getAuthor();
String publisher = d.getPublisher();
String subject = d.getSubject();
	
out.println("<tr class='info'>");
	out.println("<td>");
	%><input type="checkbox"name ="check"value="<%=isbn %>"><%
	out.println("</td>");
	out.println("<td>");
	out.println(isbn);
	out.println("</td>"); 

	out.println("<td>");
	out.println(btitle);
	out.println("</td>"); 
	out.println("<td>");
	out.println(category);
	out.println("</td>"); 
	out.println("<td>");
	out.println(status);
	out.println("</td>"); 
	out.println("<td>");
	out.println(author);
	out.println("</td>"); 
	out.println("<td>");
	out.println(publisher);
	out.println("</td>"); 
	out.println("<td>");
	out.println(subject);
	out.println("</td>"); 
	out.println("</tr>");
}
%>
</tbody>
</table>
<input type="submit"name="submit"value="submit">
</form>
</div>
</body>
</html>
















DELETE_BOOK_SHOW_HANDLER.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport"content="width=device-width, initial-scale=1">
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<%
String[] str = request.getParameterValues("check");

String dataToRemove = String.join("','", str);//in first what to insert and in second place where to insert

/* out.print("'"+dataToRemove+"'");
 */
Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");
Statement st = co.createStatement();
String SQL = "delete from book where isbn in('"+dataToRemove+"')";
st.executeUpdate(SQL);
%>
<table>
<tr class="danger">
<td><h1 class="danger">BOOK DELETED SUCCESSFULLY</h1></td>
</tr>
</table>
</body>
</html>










ISSUE_BOOK.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>ISSUE BOOK</title>
		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
	<link rel="stylesheet"href="css/Student_Signup.css">
	
</head>
<body>
<div class="container">
<div class="d-flex justify-content-center h-100">
<div class="card">
<div class="card-header">
<h3>ISSUE BOOK</h3>
			
</div>
<div class="card-body">
<forma ction="Issue_Book_Handler.jsp"method="post">
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-envelope"></i></span>
</div>
<input type="number"name="isbn"class="form-control"placeholder="ISBN">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<input type="text"name="sid"class="form-control"placeholder="Student Id">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<input type="text"name="btitle"class="form-control"placeholder="Book Title">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-book"></i></span>
</div>
<input type="date"name="issuedate"class="form-control"placeholder="Issue Date : dd/mm/yyyy">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<input type="text"name="author"class="form-control"placeholder="Book Author">
</div>
<div class="form-group">
<input type="submit"value="SUBMIT"class="btn float-center login_btn">
</div>
</form>
</div>
</div>
</div>
</body>
</html>
























ISSUE_BOOK_HANDLER.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String isbn = request.getParameter("isbn");
String sid = request.getParameter("sid");
String btitle = request.getParameter("btitle");
String issuedate = request.getParameter("issuedate");
String author = request.getParameter("author");

Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");

Statement st = co.createStatement();
st.executeUpdate("insert into issue_book values('"+isbn+"','"+sid+"','"+btitle+"','"+issuedate+"','"+author+"')");

co.close();

%>

</body>
</html>













RETURN_BOOK.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>RETURN BOOK</title>

		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
	<link rel="stylesheet"href="css/Student_Signup.css">

</head>
<body>
<div class="container">
<div class="d-flex justify-content-center h-100">
<div class="card">
<div class="card-header">
<h3>RETURN BOOK</h3>
			
</div>
<div class="card-body">
<form action="Return_Book_Handler.jsp"method="post">
	
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-envelope"></i></span>
</div>
<input type="number"name="isbn"class="form-control"placeholder="ISBN">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<input type="number"name="sid"class="form-control"placeholder="Student Id">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<input type="text"name="btitle"class="form-control"placeholder="Book Title">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fa fa-book"></i></span>
</div>
<input type="date"name="returndate"class="form-control"placeholder="return Date : dd/mm/yyyy">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<input type="number"name="lcharge"class="form-control"placeholder="Late Charge">
</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-book"></i></span>
</div>
<input type="text"name="author"class="form-control"placeholder="Book Author">
</div>
<div class="form-group">
<input type="submit"value="SUBMIT"class="btn float-center login_btn">
</div>
</form>
</div>
</div>
</div>
</body>
</html>












RETURN_BOOK_HANDLER.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String isbn = request.getParameter("isbn");
String sid = request.getParameter("sid");
String btitle = request.getParameter("btitle");
String returndate = request.getParameter("returndate");
String lcharge = request.getParameter("lcharge");
String author = request.getParameter("author");

Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");

Statement st = co.createStatement();
st.executeUpdate("insert into return_book values('"+isbn+"','"+sid+"','"+btitle+"','"+returndate+"','"+lcharge+"','"+author+"')");

co.close();

%>
</body>
</html>













CONTACT.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<linkh ref="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"rel="stylesheet">

<link rel="stylesheet"href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"href="css/animate.css">
<link rel="stylesheet"href="css/owl.carousel.min.css">
<link rel="stylesheet"href="css/owl.theme.default.min.css">
<link rel="stylesheet"href="css/magnific-popup.css">
<link rel="stylesheet"href="css/aos.css">
<link rel="stylesheet"href="css/ionicons.min.css">
<link rel="stylesheet"href="css/bootstrap-datepicker.css">
<link rel="stylesheet"href="css/jquery.timepicker.css">
<link rel="stylesheet"href="css/flaticon.css">
<link rel="stylesheet"href="css/icomoon.css">
<link rel="stylesheet"href="css/style.css">

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"id="ftco-navbar">
<div class="container">
<a class="navbar-brand"href="index.html"><i class="flaticon-university"></i>Online 
Library Management System <br><small></small></a>
<button class="navbar-toggler"type="button"data-toggle="collapse"data-target="#ftco-nav"aria-controls="ftco-nav"aria-expanded="false"aria-label="Toggle navigation">
<span class="oi oi-menu"></span>
</button>
<div class="collapse navbar-collapse"id="ftco-nav">
<ul class="navbar-nav ml-auto">
<li class="nav-item"><a href="index.html"class="nav-link">Home</a></li>
<li class="nav-item"><a href="about.html"class="nav-link">About</a></li>
<li class="nav-item"><a href="course.html"class="nav-link">Courses</a></li>
<li class="nav-item"><a href="teacher.html"class="nav-link">Teacher</a></li>
<li class="nav-item"><a href="blog.html"class="nav-link">Blog</a></li>
<li class="nav-item"><a href="event.html"class="nav-link">Events</a></li>
<li class="nav-item active"><a href="contact.html"class="nav-link">Contact</a></li>
<li class="nav-item cta"><a href="contact.html"class="nav-link"><span>Apply Now!</span></a></li>
</ul>
</div>
</div>
</nav>
<!-- END nav -->

<div class="hero-wrap hero-wrap-2"style="background-image: url('images/bg_2.jpg'); background-attachment:fixed;">
<div class="overlay"></div>
<div class="container">
<div class="row no-gutters slider-text align-items-center justify-content-center"data-scrollax-parent="true">
<div class="col-md-8 ftco-animate text-center">
<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span><span>Contact</span></p>
<h1 class="mb-3 bread">Contact Us</h1>
</div>
</div>
</div>
</div>

<section class="ftco-section contact-section ftco-degree-bg">
<div class="container">
<div class="row d-flex mb-5 contact-info">
<div class="col-md-12 mb-4">
<h2 class="h4">Contact Information</h2>
</div>
<div class="w-100"></div>
<div class="col-md-3">
<p><span>Address:1107,Rajnagar</span>Nagar,Bulandshahr,UP</p>
</div>
<div class="col-md-3">
<p><span>Phone:</span><a href="tel://xxxxxxxxxx">xxxxxxxxxxx</a></p>
</div>
<div class="col-md-3">
<p><span>Email:</span><a href="mailto:kdsinghak47@gmail.com">kdsinghak47@gmail.com</a></p>
</div>
<div class="col-md-3">
<p><span>Website</span><a href="#">OLMS.com</a></p>
</div>
</div>
<div class="row block-9">
<div class="col-md-6 pr-md-5">
<h4 class="mb-4">Any Feedback...</h4>
<form action="#">
<div class="form-group">
<input type="text"class="form-control"placeholder="Your Name">
</div>
<div class="form-group">
<input type="text"class="form-control"placeholder="Your Email">
</div>
<div class="form-group">
<input type="text"class="form-control"placeholder="Subject">
</div>
<div class="form-group">
<text areaname=""id=""cols="30"rows="7"class="form-control"placeholder="Message"></textarea>
</div>
<div class="form-group">
<input type="submit"value="Send Message"class="btn btn-primary py-3 px-5">
</div>
</form>
</div>
<div class="col-md-6"id="map"></div>
</div>
</div>
</section>
		
<footer class="ftco-footer ftco-bg-dark ftco-section img"style="background-image: url(images/bg_2.jpg); background-attachment:fixed;">
<div class="overlay"></div>
<div class="container">
<div class="row mb-5">
<div class="col-md-3">
<div class="ftco-footer-widget mb-4">
<h2><a class="navbar-brand"href="index.html"><i class="flaticon-university"></i>
Online Library Management System<br><small></small></a></h2>
<p>Far far away, behind the word mountains, far from the countries Vokalia and 
Consonantia, there live the blind texts.</p>
<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
</ul>
</div>
</div>
<div class="col-md-3">
</div>
<div class="col-md-2">
<div class="ftco-footer-widget mb-4 ml-md-4">
<h2 class="ftco-heading-2">Site Links</h2>
<ul class="list-unstyled">
<li><a href="#"class="py-2 d-block">Home</a></li>
<li><a href="#"class="py-2 d-block">About</a></li>
<li><a href="#"class="py-2 d-block">Courses</a></li>
<li><a href="#"class="py-2 d-block">Students</a></li>
<li><a href="#"class="py-2 d-block">Video</a></li>
</ul>
</div>
</div>
<div class="col-md-3">
<div class="ftco-footer-widget mb-4">
<h2 class="ftco-heading-2">Any Queries...</h2>
<div class="block-23 mb-3">
<ul>
<li><span class="icon icon-map-marker"></span><span class="text">930 
IndraNagarBhoor,Bulandshahr,UP,India</span></li>
<li><a href="#"><span class="icon icon-phone"></span><span class="text">+91 
6395836797</span></a></li>
<li><a href="#"><span class="icon icon-envelope"></span><span class="text">
info@olms.com</span></a></li>
</ul>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-md-12 text-center">
<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright ©<script>document.write(new Date().getFullYear());</script> All rights 
reserved | Online Library Management System
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
</div>
</div>
</div>
</footer>

<!-- loader -->
<div id="ftco-loader"class="show fullscreen"><svg class="circular"width="48px"height="48px"><circle class="path-bg"cx="24"cy="24"r="22"fill="none"stroke-width="4"stroke="#eeeeee"/><circle class="path"cx="24"cy="24"r="22"fill="none"stroke-width="4"stroke-miterlimit="10"stroke="#F96D00"/></svg></div>

<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>








FORGET_PASSWORD.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>FORGET PASSWORD</title>
<linkh ref="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"rel="stylesheet"id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

		<!--Bootsrap 4 CDN-->
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">

<!--Fontawesome CDN-->
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet"type="text/css"href="styles.css">
	<link rel="stylesheet"href="css/Student_Signup.css">
	
</head>
<body>
<div class="container">
<div class="d-flex justify-content-center h-100">
<div class="card">
<div class="card-header">
<h3>FORGET PASSWORD</h3>
</div>
<div class="card-body">
<form action="Forget_Password_Handler.jsp"method="post">
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-envelope"></i></span>
</div>
<input type="text"name="email"class="form-control"placeholder="EMAIL ID">
</div>
<div class="form-group">
<input type="submit"value="SUBMIT"class="btn float-right login_btn">
</div>
</form>
</div>
</div>
</div>
</div>
</body>
</html>



FORGET_PASSWORD_HANDLER.JSP
<%@pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@pageimport="java.sql.*"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int flag =0;

Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/olms","root","root");
Statement st = co.createStatement();

String e = request.getParameter("email");
//session.setAttribute("myuser",i);

ResultSet rs = st.executeQuery("select * from student_signup");

while(rs.next())
{
	String email =rs.getString("email");
if(e.equals(email) )
{
flag = 1; 

//   session.setAttribute("dname",);
break;
}
}
if(flag==1)
{

response.sendRedirect("new.jsp");

}
else
{

response.sendRedirect("Teacher_Login.jsp");

}
co.close();

%>

</body>
</html>










