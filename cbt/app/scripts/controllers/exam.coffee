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
          q.view = "list"
        else
          $scope.check[q.id] = q.choice[0 .. q.answers - 1]
          q.view = "multi"
        q.choice = shuffle(q.choice)
        questions.push(q)
      $scope.exam = shuffle(questions)
      
      $scope.checkExam = ->
        score = 0
        count = 0
        for id, answer of $scope.answer
          count++
          if typeof $scope.check[id] is "number"
            if $scope.check[id] is answer
              score++
          else
            # 複数個の奴のチェック
            # FIXME
            $scope.check[id].sort()
            rights = $scope.check[id].toString()
            tmp = []
            for id,multianswer of answer
              tmp.push(multianswer)
            tmp.sort()
            console.log
            if tmp.toString() is rights
              console.log("Matched")
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

