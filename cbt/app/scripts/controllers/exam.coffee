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
    $scope.answer = {}
    $http.get("json/" + $routeParams.examName + ".json").success (data) ->
      $scope.exam = data
      for q in data
        $scope.answer[q.id] = 0
      console.log($scope.answer)
        
  ]
