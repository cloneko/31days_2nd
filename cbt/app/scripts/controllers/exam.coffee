'use strict'

###*
 # @ngdoc function
 # @name cbtApp.controller:ExamCtrl
 # @description
 # # ExamCtrl
 # Controller of the cbtApp
###
angular.module 'cbtApp'
  .controller 'ExamCtrl',['$scope', '$routeParams', '$http', '$localStorage', ($scope, $routeParams, $http, $localStorage) ->
    $scope.params = $routeParams.examName
    $scope.answer = {}
    $scope.check = {}
    $scope.wrong = {}
    $scope.questionset = {}
    $scope.count = 0
    $scope.max = 0
    $scope.message = "Now Loading..."
    console.log($localStorage)
    $scope.$storage = $localStorage.$default(
      {
        pass: "",
        id: ""
      }
    )
    url = "https://j5odg2vd05.execute-api.ap-northeast-1.amazonaws.com/prod/butaGetJSON?exam=#{$routeParams.examName}&pass=#{$scope.$storage.pass}"
    $http.get(url).success (data) ->
      questions = []
      for q in data.questions
        $scope.check[q.id] = {}
        $scope.check[q.id]["q"] = q.q
        switch q.answers
          when 0
            $scope.check[q.id]["a"] = q.a[0]
            q.view = "text"
          when 1
            $scope.check[q.id]["a"] = q.a[0]
            q.view = "radio"
          else
            $scope.check[q.id]["a"] = q.a[0 .. q.answers - 1]
            q.view = "checkbox"
        q.choice = shuffle(q.a)
        questions.push(q)
      $scope.questionset = questions
      $scope.message = ""
      $scope.exam = shuffle(questions)
      $scope.count = questions.length
      $scope.max = questions.length
      # 全部表示しないでおく
      for i in [1 .. $scope.count]
        $scope["q" + i] = false
      $scope.q0 = true
      $scope.result = false
      
      
      $scope.checkExam = ->
        score = 0
        $scope.wrong = []
        
        for id, answer of $scope.answer
          if typeof $scope.check[id]["a"] is "number" or typeof $scope.check[id]["a"] is "String" or typeof $scope.check[id]["a"] is "string"
            if $scope.check[id]["a"].toString() is answer.toString()
              score++
            else
              $scope.wrong.push($scope.check[id]["q"])
          else
            $scope.check[id]["a"].sort()
            rights = $scope.check[id]["a"].toString()
            tmp = []
            
            for id,multianswer of answer
              tmp.push(multianswer)
            tmp.sort()
            if tmp.toString() is rights
              score++
            else
              $scope.wrong.push($scope.check[id]["q"])
        $scope.score =  score / $scope.count * 100
        $scope.q100000 = false
        $scope.result = true
      
      $scope.show = (number) ->
        # 全部表示しないでおく
        for i in [0 .. $scope.count]
          $scope["q" + i] = false
        $scope.q100000 = false
        if number <= $scope.count
          $scope["q" + number.toString()] = true
        else
          $scope.q100000 = true
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

