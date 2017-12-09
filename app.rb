require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    new_phrase = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :piglatinize, locals: { user_phrase: new_phrase}
  end
end
