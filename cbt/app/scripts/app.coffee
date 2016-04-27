'use strict'

###*
 # @ngdoc overview
 # @name cbtApp
 # @description
 # # cbtApp
 #
 # Main module of the application.
###
angular
  .module 'cbtApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
        controllerAs: 'about'
      .when '/list',
        templateUrl: 'views/examlist.html'
        controller: 'ExamlistCtrl'
        controllerAs: 'examlist'
      .otherwise
        redirectTo: '/'

