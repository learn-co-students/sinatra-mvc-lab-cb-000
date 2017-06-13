require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_text = params[:user_phrase]
    @pig_latin_text = PigLatinizer.new.to_pig_latin(@user_text)
    erb :piglatinize
  end
end
