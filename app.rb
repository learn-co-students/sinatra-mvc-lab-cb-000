require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase_instance = PigLatinizer.new
    @piglatinized = phrase_instance.piglatinize(params[:user_phrase])

    erb :result
  end

end
