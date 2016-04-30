'use strict'

describe 'Controller: ExamCtrl', ->

  # load the controller's module
  beforeEach module 'cbtApp'

  ExamCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ExamCtrl = $controller 'ExamCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(ExamCtrl.awesomeThings.length).toBe 3
