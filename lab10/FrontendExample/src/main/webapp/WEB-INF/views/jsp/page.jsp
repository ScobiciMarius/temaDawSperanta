<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />

<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
<spring:url value="/resources/core/js/jquery.min.js" var="jqueryJs" />
<spring:url value="/resources/core/js/angular.min.js" var="angularJs" />
<spring:url value="/resources/core/js/angular-resource.min.js"
	var="angularMinJs" />
<spring:url value="/resources/core/js/bootstrap.min.js"
	var="bootstrapJs" />
<spring:url value="/resources/core/js/hello.js" var="coreJs" />
<spring:url value="/resources/core/js/repos.js" var="coreJs2" />
<spring:url value="/resources/core/js/gitHubService.js" var="coreJsA" />
<spring:url value="/resources/core/js/stooges.js" var="coreJs3" />

<script src="${jqueryJs}"></script>
<script src="${angularJs}"></script>
<script src="${angularMinJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="${coreJsA}"></script>
<script src="${coreJs}"></script>
<script src="${coreJs2}"></script>
<script src="${coreJs3}"></script>



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
		<p>
        			<a class="btn btn-default btn-lg" href="/FrontendExample/form-homework"
        				role="button">Form Homework</a>
        		</p>
	</div>

	<div class="container" ng-app='myApp'>
		<div class="row">
			<div class="col-md-4" ng-controller='myController'>
				<input type="number" ng-model="model.number" class="form-control" />
				<input type="button" class="btn btn-primary"
					value="Check Odd Number" ng-click="checkOddNumber(model.number)" />
				<pre>{{model.result}}</pre>
			</div>
		</div>
		<div class="row" ng-controller='controller2'>
			<div class="col-md-4">
				<input type="text" ng-model="model.searchText" class="form-control" />
				<input type="button" class="btn btn-primary" value="Load Repos"
					ng-click="getRepos()" />
				<table class="table table-striped" ng-show="model.repos">
					<tr>
						<th>Name</th>
						<th>Language</th>
						<th>Detail</th>
					</tr>
					<tr ng-repeat="r in model.repos">
						<td>
							<h4>{{r.name}}</h4> {{r.description}}
						</td>
						<td>{{r.language}}</td>
						<td><input type="button" class="btn btn-success"
							ng-click="loadDetail(r.name)" value="Detail"></td>
					</tr>
				</table>
			</div>
			<div class="col-md-4" ng-show="model.detail">
				<h3>Detail</h3>
				<div ng-show="model.detail.error" class="alert alert-danger">
					<h3>Error</h3>
					{{model.detail.message}}
				</div>

				<div>
					<h4>Name</h4>
					{{model.detail.name}}
				</div>

				<div>
					<h4>Description</h4>
					{{model.detail.description}}
				</div>

				<div>
					<h4>URL</h4>
					<a ng-href="{{model.detail.html_url}}" target="_blank">{{model.detail.html_url}}</a>
				</div>

				<h4>Raw Data</h4>
				<pre>{{model.detail | json}}</pre>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4" ng-controller='stooges'>
				<input type="text" ng-model="model.person" class="form-control" />
				<input type="button" class="btn btn-primary" value="Find Stooge"
					ng-click="findStooge(model.person)" />
				<pre>{{model.message}}</pre>
			</div>
		</div>

	</div>

</body>
</html>