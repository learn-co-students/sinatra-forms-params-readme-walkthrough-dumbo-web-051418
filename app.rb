require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  post '/food' do
    @food = params["favorite_food"]
    @name = params["name"]
    # binding.pry
    "My name is #{@name}, and I love #{@food}"
  end

  # Add your post route and action below

end
