require_relative 'config/environment'
require_relative 'models/pig_latinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_text = PigLatinizer.new
    @text = params[:user_phrase]
    erb :piglatinize


  end



end
