<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="form" uri= "http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/style.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TraPWanGz | Register</title>
</head>
<body>
	<nav class="navbar">
    
    <div class="logo"></div>

    <ul class="nav-links">

      <div class="menu">

        <li class="services">
          <a href="/menu">Menu</a>

          <ul class="dropdown">
            <li><a href="/">Wings</a></li>
            <li><a href="/">Sides</a></li>
            <li><a href="/">Sets</a></li>
          </ul>

        </li>

        <li><a href="/contact">Contact</a></li>
        <li><a href="/login">Login</a></li>
        <li><a href="/register">Make an Account</a></li>
      </div>
    </ul>
  </nav>

<div class = "formBasic">
<form:form action = "/register" mode = "post" modelAttribute = "user">
<h2>Register</h2>

	<div class = "mb-3">
		<form:label for = "firstName" path = "firstName" class="form-label">First Name</form:label>
		<form:errors path = "firstName" class = "danger-text"/>
		<form:input class = "form-control" id = "firstName" path = "firstName"  />
	</div>
	
	<div class = "mb-3">
		<form:label for = "lastName" path = "lastName" class="form-label">Last Name</form:label>
		<form:errors path = "lastName" class = "danger-text"/>
		<form:input class = "form-control" id = "lastName" path = "lastName"  />
	</div>
	
	<div class = "mb-3">
		<form:label for = "email" class = "form-label" path = "email">Email</form:label>
		<form:errors path = "email" class = "danger-text"/>
		<form:input class = "form-control" id = "email" path = "email"  />
	</div>
	
	<div class = "mb-3">
		<form:label path = "password" class="form-label">Password</form:label>
		<form:errors path = "password" class = "danger-text"/>
		<form:input class = "form-control" id = "password" path = "password" type = "password" />
	</div>
	
	<div class = "mb-3">
		<form:label path = "confirmPassword" class="form-label">Confirm Password</form:label>
		<form:errors path = "confirmPassword" class = "danger-text"/>
		<form:input class = "form-control" id = "confirmPassword" path = "confirmPassword" type = "password"  />
	</div>
	
	<div>
		<button class = "btn btn-success" type = "submit" value = "Register">Register</button>
	</div>
	
</form:form>
</div>

<a href = "/">Back Home</a>

</body>
</html>