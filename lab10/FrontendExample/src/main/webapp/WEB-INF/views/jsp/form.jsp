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
<spring:url value="/resources/core/js/forms.js" var="coreJs4" />

<script src="${jqueryJs}"></script>
<script src="${angularJs}"></script>
<script src="${angularMinJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="${coreJsA}"></script>
<script src="${coreJs}"></script>
<script src="${coreJs2}"></script>
<script src="${coreJs3}"></script>
<script src="${coreJs4}"></script>



<head>
<title>Tony's Pizza - New User Registration</title>
</head>

<body ng-app="myApp">
	<div class="container" ng-controller="forms">
		<h1>New User Registration</h1>

		<form class="form-horizontal" name="form" novalidate>
			<div class="form-group">
				<div class="col-md-2">
					<label>Username</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="username" class="form-control" ng-model="model.username" required>
					<div class="alert alert-danger" ng-show="(form.username.$touched || form.$submitted) && form.username.$error.required">
                        Username is required
                    </div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-2">
					<label>Password</label>
				</div>
				<div class="col-md-5">
					<input type="password" name="password" class="form-control" ng-model="model.password" required>
					<div class="alert alert-danger" ng-show="(form.password.$touched || form.$submitted) && form.password.$error.required">
                        Password is required
                    </div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-2">
					<label>Name</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="name" class="form-control" ng-model="model.name" required>
					<div class="alert alert-danger" ng-show="(form.name.$touched || form.$submitted) && form.name.$error.required">
                        Name is required
                    </div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-2">
					<label>Phone Number</label>
				</div>
				<div class="col-md-5">
					<input type="number" name="phone" class="form-control" ng-model="model.phone" ng-required="true">
					<div class="alert alert-danger" ng-show="(form.phone.$touched || form.$submitted) && form.phone.$error.required">
                        Phone is required
                    </div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-2">
					<label>EmailAddress</label>
				</div>
				<div class="col-md-5">
					<input type="email" name="emailAddress" class="form-control" ng-model="model.email" ng-required="true">
					<div class="alert alert-danger" ng-show="(form.emailAddress.$touched || form.$submitted) && form.emailAddress.$error.required">
                        Email Address is required
                    </div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-2">
					<label>Favorite Pizza</label>
				</div>
				<div class="col-md-5">
					<select name="favorite" class="form-control" ng-model="model.favorite" ng-required="true">
						<option>Cheese Pizza</option>
						<option>Pepperoni Pizza</option>
						<option>Margherita Pizza</option>
						<option>BBQ Chicken Pizza</option>
						<option>Combo Pizza</option>
					</select>
					<div class="alert alert-danger" ng-show="(form.favorite.$touched || form.$submitted) && form.favorite.$error.required">
                        Favorite is required
                    </div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-2 col-md-5">
					<input type="submit" value="Submit" ng-click="submit(model)" class="btn btn-primary" ng-disabled="form.$invalid" />
					<button class="btn btn-default" ng-click="reset()">Reset</button>
				</div>
		</form>
		<pre>{{model | json}}</pre>
	</div>

</body>

</html>