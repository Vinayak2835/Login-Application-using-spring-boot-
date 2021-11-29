<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
form {
	background-color: skyblue;
	width: 550px;
	height: 350px;
}
</style>

<meta charset="ISO-8859-1">
<title>Welcome</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>

<div class="Container text-center mt-4">

    
     
       
       <form:form action="login" modelAttribute="user" method="Post">
           <div>
            <h1>Only Main Admin can Login to this app</h1>
         </div>

			<label>UserName:</label>
			<form:input path="userName" placeholder="Enter your userName" />
			<br />
			<br />

			<label>password:</label>
			<form:input path="password" placeholder="Enter your password" />
			<br />
			<br />
			<input type="submit" class="btn btn-primary btn-small text-center"
				value="Login"></input>
			
		</form:form>
	
	
</div>
	
</body>
</html>