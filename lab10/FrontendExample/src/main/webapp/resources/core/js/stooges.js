angular.module('myApp').controller('stooges', [
	'$scope', '$timeout', '$q', '$http', 
	function($scope, $timeout, $q, $http){
		$scope.model = {message: 'ready', person: null};
		$scope.findStooge = findStooge;
		
		function findStooge(name) {
		    $http.get('stooges/find/' + name)
		        .then(function (response) {
		        	$scope.model.message = response.data.status;
		        }, function (response) {
		        	$scope.model.message = 'Error: ' + response.status + ' | ' + response.data.status;
		        });
		}		
	}	
]);
