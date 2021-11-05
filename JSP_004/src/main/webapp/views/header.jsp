<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light header">
		<div class="container-fluid">
			<a class="navbar-brand" href="#" style="color: #8f889a;">CMS</a> <select
				class="select" aria-label=".form-select-lg example"
				onchange="changeSelect(this)">
				<option value="none" selected disabled hidden>&#xf007;</option>
				<option value="/JSP_003/edit">&#xf007; User Profile</option>
				<option value="/JSP_003/logout">&#xf08b; Logout</option>
			</select>
		</div>
	</nav>
</body>
</html>