module.exports = function(config) {
  config.set({
    frameworks: ['mocha', 'chai'],

    autoWatch: false,

    files: ["test/test.js", "dist/zeit.js"],

    // logLevel: config.LOG_ERROR,

    browsers: ['PhantomJS']
  })
}
