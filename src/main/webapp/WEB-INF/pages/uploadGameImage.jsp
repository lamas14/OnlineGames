<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="ff"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Games | Admin</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-min.css"
	media="screen" />
<script type="text/javascript">
	function submitForm() {
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
				<h1 align="center">Upload Game Image</h1>
			</div>
		</div>

		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<ff:form name="uploadGameImage" class="bs-example"
				action="${pageContext.request.contextPath}/admin/uploadGameImage.htm"
				method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label class="control-label" for="focusedInput">Image
						Location</label> <input class="form-control" name="photo"
						id="focusedInput" type="file">
					<button type="button" class="btn btn-primary"
						onclick="submitForm();">Login</button>
					<button type="button" class="btn btn-default"
						onclick="location.href='${pageContext.request.contextPath}/nav/index.htm'">Cancel</button>
				</div>
			</ff:form>
		</div>
		<div class="col-lg-4"></div>
	</div>
</body>
</html>