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

    <div class="container  text-center mt-5 d-flex justify-content-center align-items-center">

       <form:form action="saveUser" modelAttribute="user" method="Post">
            <p>
               Only Main Admin can make others as Admin and he can update other's too
            </p>
            
			<form:hidden path="id" placeholder="Enter your userName" />

			<label>UserName:</label>
			<form:input path="userName" placeholder="Enter your userName" />
			<br />
			<br />

			<label>password:</label>
			<form:input path="password" placeholder="Enter your password" />
			<br />
			<br />
			<input type="submit" class="btn btn-primary btn-small text-center"
				value="submit"></input>
			
	   </form:form>
	</div>
</body>
</html>