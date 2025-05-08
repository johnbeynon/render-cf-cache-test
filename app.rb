# myapp.rb
require 'sinatra'
require 'active_support/all'

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
  puts "API Key: #{params["api_key"]}"
  puts "Template ID: #{params["id"]}"
  puts "Template Name: #{params["name"]}"

  # return some content
  "This is a template for #{params["name"]}"
end