require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin = PigLatinizer.new(params[:user_phrase]).piglatinize
    
    erb :result
  end
end
