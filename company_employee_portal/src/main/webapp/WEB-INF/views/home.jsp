<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management Portal</title>
<style type="text/css">


th {
	width: 200px;
	border: 1px solid black
}

span {
	color: red;
	font-family: sans-serif;
	font-size: large;
	text-align: center;
	font-style: italic;
}

error {
	color: red;
	font-weight: bold;
	font-family: sans-serif;
	font-size: large;
	text-align: center;
	font-style: italic;
}

h1 {
	text-align: center;
	font-family: Tahoma, sans-serif;
}

body {
	
	background-color: #D0ECE7;
	align: center;
}

.button {
	background-color: #73C6B6;
	border: none;
	color: northern lights blue;
	padding: 5px 7px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 4px 2px;
	cursor: default;
}

.center {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<h1>Employee Search List Screen</h1>
	<hr>
	<br>
	<form action="/search">
		<table class="center">
			
				Employee Id
				<input type="text" name="id" id="id">&nbsp; &nbsp; &nbsp;
			
				Employee Name
				<input type="text" name="name">&nbsp; &nbsp; &nbsp;
			
				Employee gender
				<select name="gender">
						<option value="null">Select a gender</option>
						<option value="m">Male</option>
						<option value="f">Female</option>
						<option value="nd">Transgender</option>
				</select>
		
		</table>
		<p align="center"><input type="submit" value="Search" class="button"></p>
	</form>
	<p align="center">
		<error>${message}</error>
	</p>
	<hr>
	<p align="center">
		<span>${successMessage}</span><span>${deleteMsg}</span>
	</p>
	<table class="center">
	<tr>
		<td><button onclick="window.location.href='/home'" class="button">Refresh List</button></td>
		<tr><td>	<button onclick="window.location.href='/input'" value="Add Employee"
		class="button">Add Employee</button></td></tr>
		<tr><td>	<button onclick="window.location.href='/download'" value="Export CSV"
		class="button">Export CSV</button></td></tr>
	</tr>
	</table>
	<br>
	<p align="center">
		Employee List (<span>${recordsCount}</span> items)
	</p>
	<table class="center">
		<tr>
			<th>Employee</th>
			<th>Contact</th>
			<th>Level and Post</th>
			<th>Action</th>
		</tr>
		<c:forEach var="emp" items="${employee}">
			<tr>
				<td>${emp.firstName}&#32;${emp.lastName}<br>&#35;${emp.empId}
				</td>
				<td>${emp.mobileNo}<br>${emp.emailId}</td>
				<td>${emp.empLevel}/<br>${emp.postName}</td>
				<td><a href="/history/${emp.empId}">Employments</a>/<a
					href="/home/${emp.empId}">Delete</a>/<a href="/input/${emp.empId}">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>