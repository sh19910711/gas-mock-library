module.exports = (grunt) ->
  _ = require 'underscore'
  init_config = {}

  # Coffee Script
  _(init_config).extend
    coffee:
      compile:
        files:
          "./library/index.js": [
            "./source/index.coffee",
          ]
          "./library/spreadsheet_app.js": [
            "./source/spreadsheet_app/*.coffee",
          ]
          "./library/spreadsheet.js": [
            "./source/spreadsheet/*.coffee",
          ]

  # Minify
  _(init_config).extend
    uglify:
      build1:
        files:
          "./library/index.js": [
            "./library/index.js",
          ]
          "./library/spreadsheet_app.js": [
            "./library/spreadsheet_app.js",
          ]
          "./library/spreadsheet.js": [
            "./library/spreadsheet.js",
          ]

  # Mocha
  _(init_config).extend
    mochaTest:
      test:
        options:
          reporter: 'spec'
          require: [
            'coffee-script',
            'should',
          ]
        src: [
          './test/**/test_*.js',
        ]

  # Npm Tasks
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-mocha-test'

  # Define Tasks
  grunt.registerTask('build', [
    'coffee',
    'uglify',
  ])

  grunt.registerTask('test', [
    'mochaTest',
  ])

  # Apply Configuration
  grunt.initConfig init_config

