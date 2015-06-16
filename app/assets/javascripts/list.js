var thoughtKeeperApp = angular.module('thoughtKeeperApp', []);

thoughtKeeperApp.controller("ListCtrl", function($scope, $http) {
  $http.get("/lists.json").success(function(data) {
    $scope.lists = data
    console.log(data);
  });

  $scope.orderProp = "-weight"
});
