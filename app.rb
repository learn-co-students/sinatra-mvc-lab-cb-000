require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    words = PigLatinizer.new
    str = params[:user_phrase]
    @piglatin = words.piglatinize(str)

    erb :piglatinize
  end

end