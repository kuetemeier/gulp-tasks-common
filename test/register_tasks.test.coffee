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
    common = require './tools/common'

  it 'is defined', ->
    expect(common.register_tasks).to.be.a('function')

  it 'can be called and registers tasks', ->
    common.register_tasks gulp
    expect(gulp.tasks.taskEnabled).to.be.an('object')

  it 'throws an exception if *gulp* variable is undefined', ->
    expect( ->
      common.register_tasks undefined
    ).to.throw()

  it.skip 'should generate default tasks', ->
    common.register_tasks gulp
    expect(gulp.tasks.taskEnabled).to.be.an('object')
    expect(gulp.tasks.taskOwnTask).to.be.an('object')
    console.log gulp.tasks
    console.log gulp.tasks.taskEnabled.fn()
    expect(gulp.tasks.taskEnabled.fn()).to.equal('taskEnabled')

  it 'should not generate disabled tasks', ->
    common.register_tasks gulp
    expect(gulp.tasks.taskDisabled).to.be.undefined
    expect(gulp.tasks.taskOwnTaskDisabled).to.be.undefined

