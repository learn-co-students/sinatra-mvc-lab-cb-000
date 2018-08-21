require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end 
  
  post '/piglatinize' do
    @phrase = params[:user_phrase]
    dummy = PigLatinizer.new
    @pig_phrase = dummy.piglatinize(@phrase)
    
    erb :pig_latinizer
  end
end