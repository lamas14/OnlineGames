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
				<h1 align="center">Welcome to Online Games Shop!</h1>
			</div>
		</div>

		<!-- Top Games -->
		<div class="row">
			<c:forEach var="item" items="${games}" varStatus="cStatus">
				<div class="col-lg-4" style="height:500px;">
				<c:if test="${cStatus.index%3==0}">
					<div class="panel panel-success">
						<div class="panel-heading">${item.title}</div>
						<div class="panel-body" align="center">
							<img
								src="${pageContext.request.contextPath}/nav/loadImageById.htm?id=${item.id}" />
							<br /> ${item.description} <br/>
							<button type="button" class="btn btn-success">Add to cart</button>
						</div>
					</div>
				</c:if>
				<c:if test="${cStatus.index%3==1}">
					<div class="panel panel-danger">
						<div class="panel-heading">${item.title}</div>
						<div class="panel-body" align="center">
							<img
								src="${pageContext.request.contextPath}/nav/loadImageById.htm?id=${item.id}" />
							<br /> ${item.description} <br/>
							<button type="button" class="btn btn-success">Add to cart</button>
						</div>
					</div>
				</c:if>
				<c:if test="${cStatus.index%3==2}">
					<div class="panel panel-warning">
						<div class="panel-heading">${item.title}</div>
						<div class="panel-body" align="center">
							<img
								src="${pageContext.request.contextPath}/nav/loadImageById.htm?id=${item.id}" />
							<br /> ${item.description} <br/>
							<button type="button" class="btn btn-success">Add to cart</button>
						</div>
					</div>
				</c:if>
				</div>
			</c:forEach>
		</div>
		<!-- Top Game ends -->

		<!-- Top games -->
		<!-- <div class="row">
			<div class="col-lg-4">
				<div class="panel panel-success">
					<div class="panel-heading">Fifa 2014</div>
					<div class="panel-body">
						Experience the emotion of scoring great goals in EA SPORTS™ FIFA
						14. The game plays the way great football matches are contested,
						with innovations to the award-winning gameplay that inspire fans
						to build play through midfield, dictating the tempo of a match.<br />
						<button type="button" class="btn btn-success">Add to cart</button>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="panel panel-danger">
					<div class="panel-heading">Assasin's Creed 4</div>
					<div class="panel-body">
						Assassin’s Creed IV Black Flag begins in 1715, when pirates
						established a lawless republic in the Caribbean and ruled the land
						and seas. These outlaws paralyzed navies, halted international
						trade, and plundered vast fortunes. They threatened the power
						structures that ruled Europe, inspired the imaginations of
						millions, and left a legacy that still endures.<br />
						<button type="button" class="btn btn-danger">Add to cart</button>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="panel panel-warning">
					<div class="panel-heading">Grand Theft Auto V</div>
					<div class="panel-body">
						The biggest, most dynamic and most diverse open world ever
						created, Grand Theft Auto V blends storytelling and gameplay in
						new ways as players repeatedly jump in and out of the lives of the
						game’s three lead characters, playing all sides of the game’s
						interwoven story.<br />
						<button type="button" class="btn btn-warning">Add to cart</button>
					</div>
				</div>
			</div>

		</div> -->
	</div>

	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>