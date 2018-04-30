require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    words = PigLatinizer.new
    @piglatinized_phrase = words.piglatinize(params[:user_phrase])
    erb :'piglatinize.html'
  end

end
