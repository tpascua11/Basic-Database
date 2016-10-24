'use strict';

angular.module('WebApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        redirectTo: '/home'
      })
      .when('/home', {
        templateUrl: 'views/home.html',
        controller: 'HomeCtrl'
      })
      .when('/lookout', {
        templateUrl: 'views/lookout.html',
        controller: 'HomeCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });

  });
