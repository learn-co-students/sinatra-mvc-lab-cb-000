require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    Porky = PigLatinizer.new
    @converted = Porky.piglatinize(params["user_phrase"])
    erb :display
  end

end
