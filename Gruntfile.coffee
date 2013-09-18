module.exports = (grunt) ->
  _ = require 'underscore'
  init_config = {}

  source_files = [
    "index",
    "spreadsheet",
    "spreadsheet_app",
    "util",
  ]

  coffee_source_files_obj = {}
  _(source_files).each (file)->
    coffee_source_files_obj["./library/" + file + ".js"] = "./source/" + file + ".coffee"

  uglify_source_files_obj = {}
  _(source_files).each (file)->
    uglify_source_files_obj["./library/" + file + ".js"] = "./library/" + file + ".js"

  # Coffee Script
  _(init_config).extend
    coffee:
      compile:
        files: coffee_source_files_obj

  # Minify
  _(init_config).extend
    uglify:
      build1:
        files: uglify_source_files_obj

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

