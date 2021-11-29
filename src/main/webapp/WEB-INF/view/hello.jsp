<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
   <div class="row text-center">
       <h1>Admin's Page</h1>
   </div>
   <div class="row text-center">
        <form action="addUser">
            <input type="submit" value="add" class="btn btn-primary btn-small text-center"/>
        </form>  
   </div>
  <div class="container mt-3">
    <table class="table table-striped" border="2">
      <thead>
        	<tr>
        	    <td>Id</td>
        		<td>UserName</td>
        		<td>Password</td>
        	<tr>
      </thead>
      <c:forEach var="usersList" items="${users}">
         <tr>
           <td>${usersList.id}</td>
           <td>${usersList.userName}</td>
           <td>${usersList.password}</td>
           <td><a href="/updateUser?userId=${usersList.id}">Update</a></td>
           <td><a href="/deleteUser?userId=${usersList.id}" onclick="if(!(confirm('Are you sure wants to delete this guy')))return false">Delete</a></td>
         </tr>
      
      </c:forEach>
      
    </table>
    
  </div>
 
 </body>
</html>