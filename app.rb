require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base


  get '/' do
    erb :user_input
  end

#  get '/user_input' do
#    erb user_input
#  end

  post '/piglatinize' do
    new_phrase = PigLatinizer.new
    #binding.pry
    new_phrase.to_pig_latin(params[:user_phrase])
  end
end
