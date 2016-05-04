'use strict'

###*
 # @ngdoc function
 # @name cbtApp.controller:ExamlistCtrl
 # @description
 # # ExamlistCtrl
 # Controller of the cbtApp
###
angular.module 'cbtApp'
  .controller 'ExamlistCtrl',($scope) ->
    $scope.examlist = [
      {name: 'SEA/J CSPM', json: 'cspm'}
      {name: 'Network+', json: 'networkplus'}
    ]
    return
