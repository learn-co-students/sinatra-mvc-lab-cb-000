require_relative 'config/environment'
#require_relative 'models/piglatinzer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input

  end


  post '/piglatinize' do
    p = PigLatinizer.new
    @user_phrase = p.piglatinize(params[:user_phrase].to_s)
    erb :piglatinize
  end




end
