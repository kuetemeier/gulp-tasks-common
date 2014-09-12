require 'coffee-errors'

chai = require 'chai'
sinon = require 'sinon'

expect = chai.expect
chai.use require 'sinon-chai'

gulp = require 'gulp'
# using compiled JavaScript file here to be sure module works
common = require('..')(gulp, {})

describe 'gulp-tasks-common', ->
  it 'works', ->

    console.log('work:')

    console.log(common)
#    actual = common 'World'
#    expect(actual).to.eql 'Hello World'
