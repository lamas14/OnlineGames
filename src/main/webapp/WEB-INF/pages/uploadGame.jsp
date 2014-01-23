<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Games | Admin</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-min.css"
	media="screen" />
<script>
	function submitForm() {
		if (document.uploadGameForm.title.value == "") {
			alert("First Name should be left blank");
			document.uploadGameForm.firstName.focus();
			return false;
		}
		if (document.uploadGameForm.publisher.value == "") {
			alert("Last Name should be left blank");
			document.uploadGameForm.lastName.focus();
			return false;
		}
		if (document.uploadGameForm.platform.value == "") {
			alert("User ID should be left blank");
			document.uploadGameForm.userid.focus();
			return false;
		}
		if (document.uploadGameForm.price.value == "") {
			alert("Password should be left blank");
			document.uploadGameForm.password.focus();
			return false;
		}
		if (document.uploadGameForm.description.value == "") {
			alert("birthday should be left blank");
			document.uploadGameForm.birthday.focus();
			return false;
		}
		if (document.uploadGameForm.category.value == "") {
			alert("Phone should be left blank");
			document.uploadGameForm.phone.focus();
			return false;
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
				<h1 align="center">Upload Game</h1>
			</div>
		</div>

		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<form name="uploadGameForm" class="bs-example"
				action="${pageContext.request.contextPath}/admin/uploadGame.htm"
				method="post">
				<div class="form-group">
					<label class="control-label" for="focusedInput">Title</label> <input
						class="form-control" name="title" id="focusedInput" type="text">
					<label class="control-label" for="focusedInput">Publisher</label> <input
						class="form-control" name="publisher" id="focusedInput"
						type="text"> 
					<label class="control-label"
						for="focusedInput">Platform</label> <input class="form-control"
						name="platform" id="focusedInput" type="text"> 
					<label class="control-label" for="focusedInput">Price</label> <input
						class="form-control" name="price" id="focusedInput" type="text">
					<label class="control-label" for="focusedInput">Description</label>
					<input class="form-control input-lg" name="description"
						id="inputLarge" type="text"> <label class="control-label"
						for="focusedInput">Category</label> <input class="form-control"
						name="category" id="focusedInput" type="text"> <br />
					<button type="button" class="btn btn-primary"
						onclick="submitForm();">Next</button>
					<button type="button" class="btn btn-default"
						onclick="location.href='${pageContext.request.contextPath}/users/index.htm'">Cancel</button>
				</div>
			</form>

		</div>
		<div class="col-lg-4"></div>
	</div>


</body>
</html>