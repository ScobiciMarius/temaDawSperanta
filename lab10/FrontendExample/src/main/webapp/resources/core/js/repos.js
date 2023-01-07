angular.module('myApp').controller('controller2', [
	'$scope', '$timeout', '$q', '$http', 'gitHub', 
	function($scope, $timeout, $q, $http, gitHub){
		$scope.model = {repos: null};
		
		$scope.getRepos = getRepos2;
		$scope.loadDetail = loadDetail2;
		
		function getRepos() {
		    $http.get('https://api.github.com/orgs/angular/repos')
		        .then(function (response) {
		        	$scope.model.repos = response.data;
		        }, function (response) {
		        	$scope.model.repos = 'Error: ' + response.data.message;
		        });
		}
		
		function getRepos2() {
		    $scope.model.repos = gitHub.getAll({org: $scope.model.searchText});
		    $scope.model.detail.query();
		    $scope.model.repos.$promise.then(function (result) {
		        $scope.model.repos = result;
		    });
		}
		
		function loadDetail(name) {
	        var url = 'https://api.github.com/repos/angular/' + name;
	        $http.get(url)
	            .then(function (response) {
	                $scope.model.detail = response.data;
	            }, function (response) {
	                $scope.model.detail = { error: true, message: 'Error: ' + response.data.message };
	            });
	    }
		
		function loadDetail2(name) {
	        $scope.model.detail = null;
	        $scope.model.detail = gitHub.getDetail({ id: name });
	        $scope.model.detail.query();
	        $scope.model.detail.$promise.then(function (result){
	        	$scope.model.detail = result;
	        }, function(result){
	        	$scope.model.detail = { error: true, message: 'Error: ' + result.data.message };
	        });
	    }
	}
	
]);
