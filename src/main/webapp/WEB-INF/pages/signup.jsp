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
		if (document.signUpForm.firstName.value == "") {
			alert("First Name should be left blank");
			document.signUpForm.firstName.focus();
			return false;
		}
		if (document.signUpForm.lastName.value == "") {
			alert("Last Name should be left blank");
			document.signUpForm.lastName.focus();
			return false;
		}
		if (document.signUpForm.username.value == "") {
			alert("User ID should be left blank");
			document.signUpForm.userid.focus();
			return false;
		}
		if (/^[a-zA-Z0-9]*$/.test(document.signUpForm.username.value) == false) {
			alert("User Name should not contain special characters like @!*&");
			document.loginForm.userid.focus();
			return false;
		}
		if (document.signUpForm.password.value == "") {
			alert("Password should be left blank");
			document.signUpForm.password.focus();
			return false;
		}
		if (document.signUpForm.password.value != document.signUpForm.cpassword.value) {
			alert("Passwords do not match");
			document.signUpForm.cpassword.focus();
			return false;
		}
		if (document.signUpForm.birthday.value == "") {
			alert("birthday should be left blank");
			document.signUpForm.birthday.focus();
			return false;
		}
		if (document.signUpForm.phone.value == "") {
			alert("Phone should be left blank");
			document.signUpForm.phone.focus();
			return false;
		}
		if (document.signUpForm.location.value == "") {
			alert("Location should be left blank");
			document.signUpForm.location.focus();
			return false;
		}
		if (document.signUpForm.address.value == "") {
			alert("Address should be left blank");
			document.signUpForm.address.focus();
			return false;
		}
		document.forms[0].submit();
	}

	function checkUserid() {
		var puserid = document.signUpForm.username.value;
		if (puserid != "") {
			$
					.ajax({
						url : "${pageContext.request.contextPath}/users/checkUsername.htm",
						data : {
							userid : puserid
						},
						success : function(data) {
							//message is send here
							if (data == 1) {
								$('#useridTaken').html(
										"* User Name already taken");
							} else {
								$('#useridTaken').html("");
							}
						}
					});
		} //end of if condition
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
				<h1 align="center">Sign Up</h1>
			</div>
		</div>

		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<h4 style="color: red;" id="useridTaken"></h4>
			<form name="signUpForm" class="bs-example"
				action="${pageContext.request.contextPath}/users/addUser.htm"
				method="post">
				<div class="form-group">
					<label class="control-label" for="focusedInput">First Name</label>
					<input class="form-control" name="firstName" id="focusedInput"
						type="text"> <label class="control-label"
						for="focusedInput">Last Name</label> <input class="form-control"
						name="lastName" id="focusedInput" type="text"> <label
						class="control-label" for="focusedInput">Username</label> <input
						class="form-control" name="username" id="focusedInput" type="text">
					<label class="control-label" for="focusedInput">Password</label> <input
						class="form-control" name="password" id="focusedInput"
						type="password"> <label class="control-label"
						for="focusedInput">Password</label> <input class="form-control"
						name="cpassword" id="focusedInput" type="password"> <label
						class="control-label" for="focusedInput">Date of Birth</label> <input
						class="form-control" name="birthday" id="focusedInput" type="text">
					<label class="control-label" for="focusedInput">Gender</label> <select
						name="gender" class="form-control" id="select">
						<option>Male</option>
						<option>Female</option>
					</select> <label class="control-label" for="focusedInput">Phone</label> <input
						class="form-control" name="phone" id="focusedInput" type="text">
					<label class="control-label" for="focusedInput">Location</label> <input
						class="form-control" name="location" id="focusedInput" type="text">
					<label class="control-label" for="focusedInput">Address</label> <input
						class="form-control" name="address" id="focusedInput" type="text">


					<br />
					<button type="button" class="btn btn-primary"
						onclick="submitForm();">Sign Up</button>
				</div>
			</form>

		</div>
		<div class="col-lg-4"></div>
	</div>


</body>
</html>