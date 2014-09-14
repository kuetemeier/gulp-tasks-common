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

gulp = require 'gulp'
# using compiled JavaScript file here to be sure module works
common = require('..')


describe 'gulp-tasks-common', ->

  it 'has a tasks object', ->
    expect(common.tasks).to.be.an('object')

  it 'has a config object', ->
    expect(common.config).to.be.an('object')

  it 'has a method to register gulp tasks', ->
    expect(common.register_tasks).to.be.a('function')


