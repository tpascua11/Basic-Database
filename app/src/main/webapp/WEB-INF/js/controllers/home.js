'use strict';

/**
 * @ngdoc function
 * @name WebApp.controller:HomeCtrl
 * @description
 * # HomeCtrl
 * Controller of the WebApp
 */
angular.module('WebApp')
.controller('HomeCtrl', function ($scope, $log, $http) {

  // variable represented as JSON (javascript object notation)
  $scope.list = {
    fname: "first name",
    lname: "last name",
    hobbies: [
      { activity:"a1"},
      { activity:"a2"},
      { activity:"a3"},
      { activity:"a4"},
      { activity:"a5"}
    ]
  }

  // function variable
  $scope.changeName = function() {
    $scope.list.fname = "new fname";
    $scope.list.lname = "new lname";
  }

  $scope.getEmployeeNames();


});
