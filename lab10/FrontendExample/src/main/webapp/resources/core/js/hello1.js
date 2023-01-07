var app = angular.module('myApp', [])

app.controller('myController', [
	'$scope',
	function($scope) {
		$scope.model = {
			title: 'Pizza Builder',
			toppings: ['Cheese', 'Pepperoni', 'Bacon', 'Pineapple', 
				'Sausage', 'Ham', 'Chicken', 'Mushrooms', 'Onion', 'Olives'],
			addedToppings: []
		};
		
		$scope.addTopping = function(topping) {
			$scope.model.addedToppings.push(topping);
			$scope.model.search = null;
			$scope.model.showAdded = true;
			
		}
	}
]);
