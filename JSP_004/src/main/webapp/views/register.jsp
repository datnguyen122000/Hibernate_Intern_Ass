<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<link href="<%=request.getContextPath()%>/resources/css/register.css"
	rel="stylesheet" type="text/css" />
<!-- javaScript -->
<script src="<%=request.getContextPath()%>/resources/js/validate.js"></script>
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
	<div class="background">
		<div class="container">
			<div class="row">
				<div class="col order-last"></div>
				<div class="col middle" style="background-color: white;">
					<form action="/JSP_003/register" method="post"
						onsubmit="return validateRegister()">
						<input class="form-control"
							style="margin-bottom: 15px; background-color: #f5f5f5; border-bottom-right-radius: 0px; border-bottom-left-radius: 0px;"
							type="text" value="Register" aria-label="Disabled input example"
							disabled readonly>

						<c:if test="${checkSuccess==1}">
							<span
								style="color: red; margin-left: 12px; position: relative; top: -8px;">Register
								success!</span>
						</c:if>
						<c:if test="${checkSuccess==0}">
							<span
								style="color: red; margin-left: 12px; position: relative; top: -8px;">Register
								fail! (May be this account is duplicated!)</span>
						</c:if>

						<div class="mb-3">
							<input type="text" class="form-control input" id="username"
								name="username" placeholder="Username">
						</div>
						<div class="mb-3">
							<input type="text" class="form-control input" id="email"
								name="email" placeholder="E-mail">
						</div>
						<div class="mb-3">
							<input type="password" class="form-control input" id="password"
								name="password" placeholder="Password">
						</div>
						<div class="mb-3">
							<input type="password" class="form-control input" id="rePassword"
								placeholder="Re Password">
						</div>

						<input class="btn btn-primary button" type="submit"
							value="Register"> <a href="<%=request.getContextPath() %>/login">Click here
							to Login</a>
					</form>
				</div>

				<div class="col order-first"></div>
			</div>
		</div>
	</div>
</body>

</html>