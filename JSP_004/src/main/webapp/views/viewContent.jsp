<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Content</title>

<link
	href="<%=request.getContextPath()%>/resources/css/editProfile.css"
	rel="stylesheet" type="text/css" />
<!-- for javaScript -->
<script src="<%=request.getContextPath()%>/resources/js/changePage.js"></script>
<!-- for fontawesome -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"
	integrity="sha384-SlE991lGASHoBfWbelyBPLsUlwY1GwNDJo3jSJO04KZ33K2bwfV9YBauFfnzvynJ"
	crossorigin="anonymous"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- for bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
</head>

<body>
	<%@include file="header.jsp"%>
	<div class="container-fluid body">
		<div class="row">
			<div class="col-3  left">
				<form class="d-flex search">
					<input class="form-control me-2 searchInput" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-Light searchButton" type="submit">
						<i class="fas fa-search"></i>
					</button>
				</form>
				<hr
					style="background-color: #d1d1d1; height: 1px; margin-bottom: 0px;">

				<div style="background-color: #eeeeee; padding-top: 10px;">
					<i class="fa fa-calendar-alt"
						style="margin-left: 12px; color: #5c8fc0;"></i> <a
						href="/JSP_003/view-content"
						style="text-decoration: none; color: #5c8fc0;">Views contents</a>
					<hr
						style="background-color: #d1d1d1; height: 1px; margin-top: 10px; margin-bottom: 10px;">
				</div>

				<i class="far fa-edit" style="margin-left: 12px; color: #5c8fc0;"></i>
				<a href="/JSP_003/add-content"
					style="text-decoration: none; color: #5c8fc0;">Form contents</a>
				<hr
					style="background-color: #d1d1d1; height: 1px; margin-top: 10px; margin-bottom: 10px;">

			</div>

			<div class="col-9">
				<h1>View Content</h1>
				<hr
					style="background-color: #d1d1d1; height: 1px; margin-top: 10px; margin-bottom: 10px;">

				<div class="form">
					<nav class="navbar navbar-light bg-light body detailForm">
						<div class="container-fluid" style="border: none;">
							<div class="navbar-brand header" style="border: none;">View
								Content List</div>
						</div>
					</nav>
					<div class="detailForm" style="height: auto;">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>#</th>
									<th class="colTitle">Title</th>
									<th class="colBrief">Brief</th>
									<th>Created Date &ensp;</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="o" items="${contents}">
									<tr>
										<td>${o.id }</td>
										<td class="colTitle">${o.title}</td>
										<td class="colBrief">${o.brief}</td>
										<td>${o.timeView }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
</body>

</html>