require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    #show form to input string
    erb :user_input
  end

  post '/piglatinize' do
    #process form
    pl = PigLatinizer.new
    @pl = pl.to_pig_latin(params[:user_phrase])
    erb :piglatin
  end
end
