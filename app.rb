require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :index
  end

  post '/piglatinize' do
    p = PigLatinizer.new
    @user_phrase = p.piglatinize(params[:user_phrase].to_s)

    erb :piglatinize
  end


end
