require 'sinatra'
require 'json'

get '/' do
  "Hello world, it's #{Time.now} at the server!"
end

get '/login.html' do
  "Hello world, it's #{Time.now} at the server!"
end

get '/configure.html' do
  "Hello world, it's #{Time.now} at the server!"
end

get '/application_properties/:env/:version' do
  content_type :json
  
  # Testing and development
  if params[:env] == 'dev' || params[:env] == 'test'
    r = Responses::Response.new("1", "2", false)
    r.to_json()
  # Production
  else params[:env] == 'prod'
    r = Responses::Response.new("1", "2", true)
    r.to_json()
  end
  
  # Error
  Responses::Response.error()
end