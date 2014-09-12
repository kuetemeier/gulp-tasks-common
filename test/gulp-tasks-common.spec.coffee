require 'coffee-errors'

chai = require 'chai'
sinon = require 'sinon'
# using compiled JavaScript file here to be sure module works
gulpTasksCommon = require '../lib/gulp-tasks-common.js'

expect = chai.expect
chai.use require 'sinon-chai'

describe 'gulp-tasks-common', ->
  it 'works', ->
    actual = gulpTasksCommon 'World'
    expect(actual).to.eql 'Hello World'
