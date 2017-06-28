require('sinatra')
  require('sinatra/reloader')

#route the get request from the browser and respond with our index view.
  get('/') do
    erb(:index)
  end