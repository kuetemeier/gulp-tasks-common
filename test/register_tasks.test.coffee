###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

# patch error stack to display correct line numbers for CoffeeScript
require 'coffee-errors'
requireUncached = require './tools/requireuncached'

# set up test stack
chai = require 'chai'
sinon = require 'sinon'

expect = chai.expect
chai.use require 'sinon-chai'

gulp = undefined
# using compiled JavaScript file here to be sure module works
common = require('..')


describe 'register_tasks', ->

  beforeEach ->
    gulp = requireUncached 'gulp'

  it 'is defined', ->
    expect(common.register_tasks).to.be.a('function')

  it 'can be called', ->
    common.register_tasks()
    console.log gulp.tasks
    #expect(gulp.tasks.jshint).to.be.an('object')
