###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

# patch error stack to display correct line numbers for CoffeeScript
require 'coffee-errors'

# set up test stack
chai = require 'chai'
sinon = require 'sinon'

expect = chai.expect
chai.use require 'sinon-chai'


# using compiled JavaScript file here to be sure module works
common = require('..')

before ->
  gulp = require 'gulp'


describe 'gulp-tasks-common', ->

  before ->
    console.log("before describe")

  after ->
    console.log('after describe')

  it 'works', ->

#    actual = common 'World'
#    expect(actual).to.eql 'Hello World'
