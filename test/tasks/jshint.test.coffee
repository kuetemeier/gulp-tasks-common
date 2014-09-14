###
 * https://github.com/jkuetemeier/gulp-tasks-common
 *
 * Copyright (c) 2014 Jörg Kütemeier
 * Licensed under the MIT license.
###

require 'coffee-errors'
requireUncached = require '../tools/requireuncached'

chai = require 'chai'
sinon = require 'sinon'

expect = chai.expect
chai.use require 'sinon-chai'

_ = require 'lodash'

# using compiled JavaScript file here to be sure module works
common = require('../..')
gulp = undefined

describe 'tasks - jshint', ->
  it 'is defined', ->
    expect(common.tasks.jshint).to.be.an('object')
    expect(common.tasks.jshint.fn).to.be.a('function')

  it 'has a config', ->
    expect(common.config.jshint).to.be.an('object')

  it 'is enabeld by default', ->
    expect(common.config.jshint.enabled).to.be.true

  describe 'function task', ->
    c = _.clone common.config.jshint

    beforeEach ->
      gulp = requireUncached 'gulp'

    it 'is defined', ->
      expect(common.tasks.jshint.task).to.be.a('function')

    it 'registeres a "jshint" task - with default config', ->
      expect(gulp.tasks.jshint).to.be.undefined
      common.tasks.jshint.task gulp
      expect(gulp.tasks.jshint).to.be.an('object')
      # hopefully config has not been changed
      expect(common.config.jshint).to.deep.equal(c)

    it 'do not registeres a task if it is not enabled', ->
      expect(gulp.tasks.jshint).to.be.undefined
      common.tasks.jshint.task gulp, { enabled: false }
      expect(gulp.tasks.jshint).to.be.undefined
      # hopefully config has not been changed
      expect(common.config.jshint).to.deep.equal(c)

    it 'enques fn', ->
      mock = sinon.mock(common.tasks.jshint)
      mock.expects('fn').once()

      common.tasks.jshint.task gulp

      expect(gulp.tasks.jshint).to.be.an('object')

      gulp.tasks.jshint.fn()

      mock.verify()
      mock.restore()



