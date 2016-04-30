'use strict'

###*
 # @ngdoc function
 # @name cbtApp.controller:ExamCtrl
 # @description
 # # ExamCtrl
 # Controller of the cbtApp
###
angular.module 'cbtApp'
  .controller 'ExamCtrl',($scope) ->
    $scope.exam = [
        {
            question: '1 + 1 = ?' 
            choice: [
                2
                1
                3
                4
            ]
            answer: 1
        }
    ]
    return
