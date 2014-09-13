###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

require 'coffee-errors'

chai = require 'chai'
sinon = require 'sinon'

expect = chai.expect
chai.use require 'sinon-chai'

gulp = require 'gulp'
# using compiled JavaScript file here to be sure module works
common = require('..')

describe 'gulp-tasks-common', ->
  it 'works', ->

#    actual = common 'World'
#    expect(actual).to.eql 'Hello World'
