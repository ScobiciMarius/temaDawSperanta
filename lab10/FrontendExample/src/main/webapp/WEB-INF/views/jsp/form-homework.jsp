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
<spring:url value="/resources/core/js/form-homework.js" var="coreJs" />

<script src="${jqueryJs}"></script>
<script src="${angularJs}"></script>
<script src="${angularMinJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="${coreJs}"></script>



<head>
<title>Order a pizza</title>
</head>

<body ng-app="pizzaOrder">
    <div class="jumbotron" ng-controller="formController">

        <div ng-if="!orderConfirmation" class="container" >
            <form class="form-horizontal" name="form">

                <div class="form-group">
                    <div class="col-md-2">
                        <label>Name</label>
                    </div>
                    <div class="col-md-5">
                        <input type="text" name="name" class="form-control" ng-model="model.name" required>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2">
                        <label>Email</label>
                    </div>
                    <div class="col-md-5">
                        <input type="email" name="email" class="form-control" ng-model="model.email" required>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2">
                        <label>Phone</label>
                    </div>
                    <div class="col-md-5">
                        <input type="text" name="phone" class="form-control" ng-model="model.phone" required>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2">
                        <label>Address</label>
                    </div>
                    <div class="col-md-5">
                        <input type="text" name="address" class="form-control" ng-model="model.address" required>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2">
                        <label>Dishes chosen</label>
                    </div>
                    <div class="col-md-5">
                        <select
                            multiple
                            ng-options="dish.name for dish in dishes"
                            name="dish"
                            class="form-control"
                            ng-model="model.dish"
                            ng-required="true">
                        </select>
                        <pre style="margin-top: 10px">Price of selected dishes: {{getDishValue(model.dish)}} lei grei </pre>
                    </div>
                </div>

                <div class="col-md-offset-2 col-md-5">
                    <input type="submit" value="Submit" ng-click="submit(model)" class="btn btn-primary" ng-disabled="form.$invalid" />
                    <button class="btn btn-default" ng-click="reset()">Reset</button>
                </div>
            </form>
        </div>

        <div ng-if="orderConfirmation" class="container">
            <div>
                <h2>
                    ORDER SUMMARY:
                </h2>
                <div>
                    Name: {{orderConfirmation.name}}
                </div>
                <div>
                    Email: {{orderConfirmation.email}}
                </div>
                <div>
                    Phone: {{orderConfirmation.phone}}
                </div>
                <div>
                    Address: {{orderConfirmation.address}}
                </div>
                <div>
                    Dish chosen:
                    <ul>
                        <li ng-repeat="sal in orderConfirmation.dish">
                            {{sal.name}} - pret: {{sal.price}}
                        <li>
                    </ul>
                <div>
                <div>
                    Total price: {{getDishValue(orderConfirmation.dish)}}
                <div>
            </div>
            <div>
                <button class="btn btn-default" ng-click="reset()">Another order</button>
            </div>
        </div>

    </div>
</body>

</html>