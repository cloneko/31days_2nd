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
    $scope.check = {}
    $http.get("json/" + $routeParams.examName + ".json").success (data) ->
      questions = []
      for q in data
        if q.answers is 1
          $scope.check[q.id] = q.choice[0]
        else
          $scope.check[q.id] = q.choice[0 .. q.answers - 1]
        q.choice = shuffle(q.choice)
        questions.push(q)
      $scope.exam = shuffle(questions)
      
      $scope.checkExam = ->
        score = 0
        count = 0
        for id, answer of $scope.answer
          count++
          if $scope.check[id] is answer
            score++
        $scope.score = score / count * 100
   ]

shuffle = (array) ->
  m = array.length
  t = 0
  i = 0
  
  while(m)
    i = Math.floor(Math.random() * m--)
    t = array[m]
    array[m] = array[i]
    array[i] = t
    return array