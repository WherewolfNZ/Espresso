'use strict'

var test = require('tap').test
  , versions = require('../')

test('should be an array', function(t) {
  t.type(versions, Array)
  t.end()
})
