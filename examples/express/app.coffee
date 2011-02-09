app = require('express').createServer()

app.register '.coffee', require('cayennetree')
app.set 'view engine', 'coffee'

app.get '/', (req, res) ->
  res.render 'index'

app.get '/login', (req, res) ->
  res.render 'login', locals: {a_local_var: 'local'}, context: {a_context_var: 'context'}

app.get '/inline', (req, res) ->
  res.send require('cayennetree').render ->
    h1 'This is an inline template.'

app.listen 3000

puts "Listening on 3000..."
