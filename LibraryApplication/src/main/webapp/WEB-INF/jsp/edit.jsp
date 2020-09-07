<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
<meta charset="ISO-8859-1">
<title>Edit Book</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #f1f3de">
	<h1 style="margin-top:100px; font-style:inherit; font-family:fantasy;" align="center">Edit Book</h1>
	<div align="center" class="container" style="background-color: #e0ece4; max-width:900px; height:420p; padding: 5%">
		<form:form method="POST" action="/LibraryApplication/editSave">
			<table style="width:100%">
				<tr>
					<td></td>
					<td><form:hidden path="bookid" /></td>
				</tr>
				<tr style="display: flex;">
					<td style="flex: 8" class="h5 text-dark">Book Name:</td>
					<td style="flex: 5"><form:input class="form-control" path="bookName" onkeypress="return ValidateBook(event);" required="required"/></td>
					<td style="flex: 8"><span id="lblCharError" style="color: red"></span></br></br></td>
				</tr>
				<tr style="display: flex;">
					<td style="flex: 8" class="h5 text-dark">Author Name:</td>
					<td style="flex: 5"><form:input class="form-control" path="authorName" onkeypress="return ValidateAuthor(event);" required="required"/></td>
					<td style="flex: 8"><span id="lblCharError2" style="color: red"></span></br></br></td>
				</tr>
				<tr style="display: flex;">
					<td style="flex: 8" class="h5 text-dark">No of Copies:</td>
					<td style="flex: 5"><form:input class="form-control" path="noOfCopies" onkeypress="return ValidateNum(event);" required="required"/></td>
					<td style="flex: 8"><span id="lblNumError" style="color: red"></span></br></br></td>
				</tr>
				<tr>
					<td><input style="margin-top: 10px;margin-left: 290px" class="btn btn-warning" type="submit" value="EDIT"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>