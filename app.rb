require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  post '/food' do
    # this allows me to get my data from a form into the controller
    # params.to_s # params is the hash which collects all element submitted to the form
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}" #by accessing params by key name I can access the specific values

  end

end
