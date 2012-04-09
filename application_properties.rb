require 'sinatra'
require_relative 'domain/response'

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
    Response.new("1", "2", false).json
  # Production
  elsif params[:env] == 'prod'
    Response.new("1", "2", true).json
  else
    # Error
    Response.error().json
  end
  
end