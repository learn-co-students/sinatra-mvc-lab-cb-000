require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinize = PigLatinizer.new
    @piglatin_pharse = piglatinize.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end
end
