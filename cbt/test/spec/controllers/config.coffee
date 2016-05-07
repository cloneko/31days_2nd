'use strict'

describe 'Controller: ConfigCtrl', ->

  # load the controller's module
  beforeEach module 'cbtApp'

  ConfigCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ConfigCtrl = $controller 'ConfigCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(ConfigCtrl.awesomeThings.length).toBe 3
