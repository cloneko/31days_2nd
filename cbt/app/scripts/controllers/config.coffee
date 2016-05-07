'use strict'

###*
 # @ngdoc function
 # @name cbtApp.controller:ConfigCtrl
 # @description
 # # ConfigCtrl
 # Controller of the cbtApp
###
angular.module 'cbtApp'
  .controller 'ConfigCtrl', ['$scope', '$localStorage', ($scope, $localStorage)->
    $scope.$storage = $localStorage.$default(
      {
        pass: "",
        id: ""
      }
    )
    $scope.pass = $scope.$storage.pass
    $scope.id = $scope.$storage.id
    
    $scope.setPass = ->
      $scope.$storage.pass = $scope.pass
      return
      
    $scope.setId = ->
      $scope.$storage.id = $scope.id
    return
  ]
