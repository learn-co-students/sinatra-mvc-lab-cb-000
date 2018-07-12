require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @input = params[:user_phrase]
    pig = PigLatinizer.new
    @result = pig.piglatinize(@input)
    erb :result
  end
end