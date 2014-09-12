# gulp-tasks-common

[![Dependency status](http://img.shields.io/david/jkuetemeier/gulp-tasks-common.svg?style=flat)](https://david-dm.org/jkuetemeier/gulp-tasks-common)
[![devDependency Status](http://img.shields.io/david/dev/jkuetemeier/gulp-tasks-common.svg?style=flat)](https://david-dm.org/jkuetemeier/gulp-tasks-common#info=devDependencies)
[![Build Status](http://img.shields.io/travis/jkuetemeier/gulp-tasks-common.svg?style=flat&branch=master)](https://travis-ci.org/jkuetemeier/gulp-tasks-common)

[![NPM](https://nodei.co/npm/gulp-tasks-common.svg?style=flat)](https://npmjs.org/package/gulp-tasks-common)

## Installation

    npm install gulp-tasks-common

## Usage Example

Install [gulp.js](https://github.com/gulpjs/gulp) and [gulp-tasks-common](https://github.com/jkuetemeier/gulp-tasks-common):

```
npm install --save-dev gulp
npm install --save-dev gulp-tasks-common
```

Create a `gulpfile.js`

```
// load gulp
var gulp = require('gulp');

// load common task
var common = require('gulp-tasks-common');

// register task
common.gulp_common(gulp);

gulp.task('default', ['jshint']);
```

## Integrated Tasks:

### JSHint

Name: `jshint`
Used module: [gulp-jshint](https://github.com/spenceralger/gulp-jshint)
Options:

```
  # array of sourcefiles to be jshint'ed
  src : [
    "**/*.js",
    "!test/tool/**/*",
    "!node_modules/**/*"
  ]

  # use a verbose reporter
  verbose : true

  # should the build fail if jshint finds a validation violation
  fail: true

  # optional path to a jshintrc file, default behavior: lookup
  jshintrc_path: undefined

```

A complete list of JSHint Options can be found at
http://www.jshint.com/docs/options/

For an example `.jshintrc` see my [Gist]
(https://gist.github.com/jkuetemeier/a2a1072e10873717c507)

## Testing

    npm test

## License

The MIT License (MIT)

Copyright 2014 Jörg Kütemeier

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
