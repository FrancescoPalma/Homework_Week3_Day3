require 'sinatra'
require 'sinatra/contrib/all'
require_relative 'models/shoos'

get '/shoos/new' do
  erb :form
end

post '/shoos' do
  @shoos = Shoos.new(params)
  @shoos.save()
  erb :success
end

get '/shoos' do 
  @all_shoos = Shoos.all()
  erb :display
end