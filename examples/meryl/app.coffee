meryl = require 'meryl'
cayennetree = require 'cayennetree'

meryl.h 'GET /', (req, resp) ->
  people = ['bob', 'alice', 'meryl']
  resp.render 'layout', content: 'index', context: {people: people}

meryl.run
  templateDir: 'templates'
  templateExt: '.coffee'
  templateFunc: cayennetree.adapters.meryl

puts 'Listening on 3000...'
