require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @w = PigLatinizer.new
    @input = params[:user_phrase]
    erb :pig_latin
  end
end
