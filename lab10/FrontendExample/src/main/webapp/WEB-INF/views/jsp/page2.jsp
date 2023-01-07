<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />

<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
<spring:url value="/resources/core/js/jquery.min.js" var="jqueryJs" />
<spring:url value="/resources/core/js/angular.min.js" var="angularJs" />
<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />
<spring:url value="/resources/core/js/hello.js" var="coreJs" />

<script src="${jqueryJs}"></script>
<script src="${angularJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="${coreJs}"></script>

<head>
	<title>Maven + Spring MVC</title>
</head>

<body>
	<div class="jumbotron text-center">
		<p>
			<c:if test="${not empty msg}">
				<h2>Hello ${msg}</h2>
			</c:if>

			<c:if test="${empty msg}">
				<h2>Welcome Welcome!</h2>
			</c:if>
		</p>
		<p>
			<a class="btn btn-default btn-lg" href="/MVCExample/hello/gigi"
				role="button">Hello</a>
		</p>
	</div>

	<div class="container" ng-app='myApp'>
		<div class="row">
			<div class="col-md-4" ng-controller='myController'>
				<div>Provided value is {{value}}</div>
			</div>
		</div>
	</div>	

</body>
</html>