<%@ taglib uri="http://www.springframework.org/tags/form" prefix="ff"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<a href="${pageContext.request.contextPath}/nav/index.htm" class="navbar-brand">Home</a>
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#" id="themes">Categories <span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a tabindex="-1" href="../flatly/">Action/Adventure</a></li>
					<li><a tabindex="-1" href="../readable/">Fighting</a></li>
					<li><a tabindex="-1" href="../simplex/">Role-Playing</a></li>
					<li><a tabindex="-1" href="../slate/">Shooting</a></li>
					<li><a tabindex="-1" href="../spacelab/">Sports</a></li>
					<li><a tabindex="-1" href="../united/">Strategy</a></li>
				</ul></li>
			<li><a href="${pageContext.request.contextPath}/nav/deals.htm">Today's Deals</a></li>
			<li><a href="${pageContext.request.contextPath}/nav/help.htm">Need help?</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<c:choose>
			<c:when test="${not empty user}">
				<li><a href="#">${user.firstName}</a></li>
				<li><a href="${pageContext.request.contextPath}/users/logout.htm">Log out</a></li>
			</c:when>
				<c:otherwise>
					<li><a href="${pageContext.request.contextPath}/nav/login.htm">Login</a></li>
					<li><a href="${pageContext.request.contextPath}/nav/signup.htm">Sign
							Up</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</div>