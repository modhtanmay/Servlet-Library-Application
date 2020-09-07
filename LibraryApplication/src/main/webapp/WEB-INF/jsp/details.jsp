<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Details</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
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
<div align="center">
	<table style="width:90%; margin-top: 20px " class="table table-dark" border="1" cellpadding="2" cellspacing="2">
		<thead>
			<tr align="center">
				<th>Book Id</th>
				<th>Book Name</th>
				<th>Author Name</th>
				<th>No of Copies</th>
				<th>Edit Book</th>
				<th>Delete Book</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="b" items="${bookList}">
				<tr align="center">
					<td>${b.bookid}</td>
					<td>${b.bookName}</td>
					<td>${b.authorName}</td>
					<td>${b.noOfCopies}</td>
					<td><a class="btn btn-outline-warning" href="editBook/${b.bookid}">Edit</a></td>
					<td><a class="btn btn-outline-warning" href="deleteBook/${b.bookid}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>