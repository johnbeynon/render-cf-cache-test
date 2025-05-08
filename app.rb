# myapp.rb
require 'sinatra'

get '/' do
  erb :index
end

get '/ping' do
  "pong"
end

post '/ping' do
  "pong"
end