<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <script src="<c:url value="/resources/js/main.js" />"></script>
<meta charset="ISO-8859-1">
<title>Add Book</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a style="font-weight: bold;" class="navbar-brand" href="/LibraryApplication/">LIBRARY APPLICATION</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="details">BOOKS <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link active" href="addBook">ADD</a>
    </div>
  </div>
</nav>
<body style="background-color: #f1f3de">
	<h1 style="margin-top:100px; font-style:inherit; font-family:fantasy;" align="center">Add Book</h1>
	<div align="center" class="container" style="background-color: #e0ece4; max-width:900px; height:420p; padding: 5%">
		<form:form modelAttribute="book" action="add">
			<table style="width:100%">
				<tr style="display: flex;">
					<td style="flex: 8" class="h5 text-dark">Book Name:</td>
					<td style="flex: 5"><form:input class="form-control" path="bookName" minlength="5" onkeypress="return ValidateBook(event);" required="required" placeholder="Enter Book Name"/></td>
					<td style="flex: 8"><span id="lblCharError" style="color: red"></span></td>
				</tr>
				<tr style="display: flex;">
					<td style="flex: 8" class="h5 text-dark">Author Name:</td>
					<td style="flex: 5"><form:input class="form-control" path="authorName" minlength="5" onkeypress="return ValidateAuthor(event);" required="required" placeholder="Enter Author Name"/></td>
					<td style="flex: 8"><span id="lblCharError2" style="color: red"></span></td>
				</tr>
				<tr style="display: flex;">
					<td style="flex: 8" class="h5 text-dark">No of Copies:</td>
					<td style="flex: 5"><form:input class="form-control" path="noOfCopies" onkeypress="return ValidateNum(event);" value="1" required="required"/></td>
					<td style="flex: 8"><span id="lblNumError" style="color: red"></span></td>
				</tr>
				<tr>
					<td><input style="margin-top: 10px;margin-left: 290px" class="btn btn-warning" type="submit" value="ADD"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>