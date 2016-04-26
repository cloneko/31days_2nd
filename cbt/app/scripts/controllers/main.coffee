'use strict'

###*
 # @ngdoc function
 # @name cbtApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the cbtApp
###
angular.module 'cbtApp'
  .controller 'MainCtrl', ->
    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    return
