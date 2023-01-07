var app = angular.module('myApp', [])

app.controller('myController', [
	'$scope', '$timeout', '$q',
	function($scope, $timeout, $q) {
		function provideValue() {
			var value = null
			var defer = $q.defer()
			$timeout(function() {
				defer.resolve(5)
			}, 2000)
			return defer.promise
		}
		provideValue().then(function(response) {
			$scope.value = response
		})
	}
]);
