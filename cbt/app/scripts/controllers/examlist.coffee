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
      {name: 'CIW Internet Business', json: 'ciw-ib' },
      {name: 'CIW Network Technology', json: 'ciw-net' },
      {name: 'CIW Web development', json: 'ciw-web' },
      {name: 'CIW Business2', json: 'ciw_business' },
      {name: 'CIW Network2', json: 'ciw_network' },
      {name: 'CIW Web2', json: 'ciw_web' },
      {name: 'Cloud Essentials Keywords', json: 'cloud_keywords' },
      {name: 'SEA/J CPSM Demo', json: 'cspm' },
      {name: 'SEA/J CPSM 1', json: 'cspmplus1' },
      {name: 'SEA/J CSPM 2', json: 'cspmplus2' },
      {name: 'SEA/J CSPM 1+2', json: 'cspmplusm' },
      {name: 'Network+ Chapter1', json: 'networkplus_chapter1' },
      {name: 'Network+ Chapter2', json: 'networkplus_chapter2' },
      {name: 'Network+ Chapter3', json: 'networkplus_chapter3' },
      {name: 'Network+ Chapter4', json: 'networkplus_chapter4' },
      {name: 'Network+ Chapter5', json: 'networkplus_chapter5' },
      {name: 'Network+ Chapter6', json: 'networkplus_chapter6' },
      {name: 'Network+ Chapter7', json: 'networkplus_chapter7' },
      {name: 'Network+ Chapter8', json: 'networkplus_chapter8' },
      {name: 'Network+ Chapter9', json: 'networkplus_chapter9' },
      {name: 'Network+ Chapter99', json: 'networkplus_chapter99' },
      {name: 'Network+ Chapter___', json: 'networkplus_chapter_' },
      {name: '何だっけ…', json: 'questions' },
      {name: 'CSBM?', json: 'seaj' },
      {name: 'Unix Commands', json: 'unix' }
    ]
    return
