exec = require('child_process').exec

task 'build', ->
  exec 'coffee -c lib/cayennetree.coffee', (err) ->
    puts err if err

task 'test', -> require('./test').run()

task 'benchmark', -> require('./benchmark').run()
