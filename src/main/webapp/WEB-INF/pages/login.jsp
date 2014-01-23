<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Games</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-min.css"
	media="screen" />
<script>
	function submitForm() {
		var pusername = document.forms[0].username.value;
		var ppassword = document.forms[0].password.value;
		if (pusername.length == 0) {
			alert("Username cannot be blank");
			document.forms[0].j_username.focus();
			return;
		}
		if (ppassword.length == 0) {
			alert("Password cannot be blank");
			document.forms[0].j_password.focus();
			return;
		}
		document.forms[0].submit();
	}
</script>

</head>
<body>
	<!-- Importing Main Menu -->
	<%@ include file="mainMenu.jsp"%>

	<br />
	<br />
	<br />

	<div class="container">
		<div class="col-lg-12">
			<div class="jumbotron">
				<h1 align="center">Login</h1>
			</div>
		</div>

		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<h3 align="center">
				<font color="red"><span id="message">${error}</span></font>
			</h3>
			<form name="loginForm" class="bs-example"
				action="${pageContext.request.contextPath}/users/loginCheck.htm"
				method="post">
				<div class="form-group">
					<label class="control-label" for="focusedInput">Username</label> <input
						class="form-control" name="username" id="focusedInput" type="text">
					<label class="control-label" for="focusedInput">Password</label> <input
						class="form-control" name="password" id="focusedInput"
						type="password"> <br />
					<button type="button" class="btn btn-primary"
						onclick="submitForm();">Login</button>
					<button type="button" class="btn btn-default"
						onclick="location.href='${pageContext.request.contextPath}/users/signup.htm'">Sign
						up</button>
				</div>
			</form>

		</div>
		<div class="col-lg-4"></div>
	</div>

</body>
</html>