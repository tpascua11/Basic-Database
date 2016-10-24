'use strict';

/**
 * @ngdoc function
 * @name WebApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the WebApp
 */
angular.module('WebApp')
.controller('MainCtrl', function ($scope, $log, $http) {

  $scope.getEmployeeNames = function() {
    console.log("did it happen?");
    $http({
      url: '/app/employee/name',
      method: "GET"
    }).success(function (data, status, headers, config) {

      // set variable in the main scope
      $scope.emp = data;

      $log.debug(data);
      console.log($scope.emp);

    }).error(function (data, status, headers, config) {
      $log.error(status + " Error obtaining name data: " + data);
    });
  }
  $scope.doSomethingNOW = function(){
    getEmployeeNames();
  }

});
