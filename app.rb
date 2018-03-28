require_relative 'config/environment'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # process params
    pg = PigLatinizer.new()
    @phrase = pg.piglatinize(params[:user_phrase])

    erb :new_phrase
  end
    

end
