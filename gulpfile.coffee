###
node.js *
###
path = require "path"
fs   = require "fs"

###
Gulp and plugins *
###
gulp    = require "gulp"
gutil   = require "gulp-util"
watch   = require "gulp-watch"
plumber = require "gulp-plumber"
uglify  = require "gulp-uglify"
rename  = require "gulp-rename"
coffee  = require "gulp-coffee"
clean   = require "gulp-clean"
mocha   = require "gulp-mocha"
karma   = require 'gulp-karma'

require 'gulp-ignore'


distDir = "./dist/"
distTargetFile = "zeit.js"


###
Tasks
###

gulp.task "clean", ->
  gulp
    .src [distDir, './test/**/*.js'], read: false
    .pipe clean()

gulp.task "coffee", ->
  gulp
    .src "./src/*.coffee"
    .pipe coffee bare: true
    .pipe gulp.dest distDir
  gulp
    .src 'test/**/*.coffee'
    .pipe coffee bare: true
    .pipe gulp.dest './test'

gulp.task "minify", ["coffee"], ->
  gulp
    .src ["./dist/*.js", "!./dist/*.min.js"]
    .pipe rename suffix: ".min"
    .pipe uglify outSourceMap: true
    .pipe gulp.dest distDir

gulp.task "build", [
  "coffee"
  "minify"
]

gulp.task "default", [
  "test:watch"
]

gulp.task "test:watch", ["build"], ->
  gulp.watch ["src/*.coffee", "test/**/*.coffee"], [
    "build"
  ]
  gulp.src ['dist/zeit.js', 'test/**/*.js']
    .pipe karma
      configFile: './karma.conf.js'
      action: 'watch'

gulp.task "test", ["build"], ->
  gulp.src ['dist/zeit.js', 'test/**/*.js']
    .pipe karma
      configFile: './karma.conf.js'
      action: 'run'
    .on 'error', ->
      throw err;
