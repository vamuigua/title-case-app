require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
also_reload('lib/**/*.rb')

#route the get request from the browser and respond with our index view.
get('/') do
    erb(:index)
  end
#route for title 
get('/title') do
    @title = params.fetch('title').title_case()
    erb(:title)
  end