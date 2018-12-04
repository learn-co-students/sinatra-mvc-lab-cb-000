require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    words = PigLatinizer.new
    piglatin = words.piglatinize(params[:user_phrase])
    # "hello"
    "#{piglatin}"
  end

end
