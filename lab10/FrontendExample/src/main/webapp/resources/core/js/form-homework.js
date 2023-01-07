var app = angular.module('pizzaOrder', []);
app.controller('formController',[
    '$scope',
    '$http',
    '$sce',
    function($scope, $http, $sce) {
        $http.get('dishes').then(function(response){
            $scope.dishes = response.data;
        });

        $scope.reset = function () {
            $scope.model = {};
            $scope.orderConfirmation = null;
        }

        $scope.getDishValue = function (dishes) {
            let sum = 0;
            if (!!dishes && dishes.length > 0) {
                dishes.forEach(element => sum+=element.price);
            }
            return sum;
        }

        $scope.submit = function(form) {
            $http.post('form-homework', form)
                .then(function (response) {
                    $scope.orderConfirmation = response.data;
                }, function(errResponse) {
                    console.error('ERROR boss');
                }
            );
        }
    }
]);

app.controller('confirmationController', [
    '$scope',
    function() {
        console.log('Order confirmed!')
    }
])