require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    @original = params["user_phrase"]
    @pig_latin = PigLatinizer.new.to_pig_latin(params["user_phrase"])
    erb :results
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

end
