<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
.hfour{

color: yellow;

}
.t{

margin:10cm 0cm 0cm 30cm;
color: white;
}

</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #4682B4;">


 
 



	<div class="container">
		
		<form:form commandName="customer" action="/signup">
		<h1 style="color: black;"> Registration</h1>
		<h2> ${match}</h2>
		<table class="table table-bordered" style="width: 15cm; height: 10cm;" >
			<tr>
				<td class="hfour"><h4>Distribution Name :</h4></td>
				<td><form:input path="name" name="name" class="form-control"/></td>
				<td class="t"><form:errors path="name"  /></td>
			</tr>
			<tr>
		
				<td><h4 class="hfour">Email id :</h4></td>
				<td><form:input path="email" name="email" type="email" class="form-control"/></td>
				<td class="t"><form:errors path="email"  /></td>
			</tr>
				<tr>
				<td><h4 class="hfour">Password :</h4></td>
				<td><form:input path="password" name="password" type="password" class="form-control"/></td>
				<td class="t"><form:errors path="password"  /></td>
			</tr>
				<tr>
				<td><h4 class="hfour">Re enter password :</h4></td>
				<td><form:input path="rePassword" name="rePassword" type="password" class="form-control" /></td>
				<td class="t"> <form:errors path="rePassword"  /></td>
			</tr>
				<tr>
				<td><h4 class="hfour">City :</h4></td>
				<td><form:input path="city" name="city" class="form-control" /></td>
				<td class="t"><form:errors path="city"  /></td>
			</tr>
				<tr>
				<td><h4 class="hfour">District :</h4></td>
				<td><form:input path="district" name="district" class="form-control"/></td>
				<td class="t"><form:errors path="district"  /></td>
			</tr>
				<tr>
				<td><h4 class="hfour">State :</h4></td>
				<td><form:input path="state" name="state" class="form-control" /></td>
				<td class="t"><form:errors path="state"  /></td>
			</tr>
				<tr>
		
				<td><h4 class="hfour">Pin :</h4></td>
				<td><form:input path="pin" name="pin" class="form-control" /></td>
				<td class="t"><form:errors path="pin"  /></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit"  class="btn btn-default"/></td>
				
			</tr>
		</table>
	</form:form>
  </div>
	
</body>
</html>