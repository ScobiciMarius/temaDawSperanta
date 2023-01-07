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

<script src="${jqueryJs}"></script>
<script src="${angularJs}"></script>
<script src="${angularMinJs}"></script>
<script src="${bootstrapJs}"></script>



<head>
<title>Order confirmation</title>
</head>

<body ng-app="pizzaOrder">
    <div class="jumbotron">

        <div class="container" ng-controller="formController">
            <div>
                Name: ${order.getName()}
            </div>
            <div>
                Email: ${order.getEmail()}
            </div>
            <div>
                Phone: ${order.getPhone()}
            </div>
            <div>
                Address: ${order.getAddress()}
            </div>
            <div>
                Dish chosen:
                <ul>
                    <c:forEach items="${order.getDish()}" var="dish">
                        <li>${dish.name} - pret: {dish.price}<li>
                    </c:forEach>
                </ul>
            <div>
            <div>
                Total price: ${totalPrice}
            <div>
        </div>
    </div>
</body>

</html>