'use strict'

describe 'Controller: ExamlistCtrl', ->

  # load the controller's module
  beforeEach module 'cbtApp'

  ExamlistCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ExamlistCtrl = $controller 'ExamlistCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(ExamlistCtrl.awesomeThings.length).toBe 3
