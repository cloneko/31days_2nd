'use strict'

###*
 # @ngdoc function
 # @name cbtApp.controller:ExamCtrl
 # @description
 # # ExamCtrl
 # Controller of the cbtApp
###
angular.module 'cbtApp'
  .controller 'ExamCtrl',['$scope', '$routeParams', '$http', ($scope, $routeParams, $http) ->
    $scope.params = $routeParams.examName
    $http.get("json/" + $routeParams.examName + ".json").success (data) ->
      $scope.exam = data
    return
  ]
