# myapp.rb
require 'sinatra'

before do
  if request.body.size > 0
    request.body.rewind
    @params = ActiveSupport::JSON.decode(request.body.read)
  end
end

get '/' do
  erb :index
end

get '/ping' do
  "pong"
end

post '/ping' do
  "pong"
end

post '/template/:id' do
  puts @params.inspect
  "This is a template for #{params["name"]}"
end