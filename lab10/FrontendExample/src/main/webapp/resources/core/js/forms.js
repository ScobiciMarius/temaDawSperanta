var app = angular.module('myApp', [])

app.controller('forms', [
	'$scope', '$timeout', '$q', '$http', 
	function($scope, $timeout, $q, $http){
		$scope.reset = reset;
		$scope.submit = submit;
	    reset();
		
		function reset() {
	        $scope.model = {};
	    }
		
		function submit(model) {
			alert('Submitted\n' + JSON.stringify(model));
			var deferred = $q.defer();
	        $http.post('form', model)
	            .then(function (response) {
	                deferred.resolve(response.data);
	            }, function(errResponse) {
	                console.error('Error while creating User');
	                deferred.reject(errResponse);
	            }
	        );
	    }
	}	
]);
