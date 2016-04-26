'use strict'

describe 'Service: cbtExam', ->

  # load the service's module
  beforeEach module 'cbtApp'

  # instantiate service
  cbtExam = {}
  beforeEach inject (_cbtExam_) ->
    cbtExam = _cbtExam_

  it 'should do something', ->
    expect(!!cbtExam).toBe true
