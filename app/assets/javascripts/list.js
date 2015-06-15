var thoughtKeeperApp = angular.module('thoughtKeeperApp', []);

thoughtKeeperApp.controller("ListCtrl", function($scope) {
  $scope.lists = [
    { name: "Xavier" },
    { name: "Veronika" }
  ];
});
