require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    resp = Rack::Response.new
    resp.status = 200

    erb :user_input
  end

  post '/piglatinize' do
    resp = Rack::Response.new
    resp.status = 200
    phrase = params[:user_phrase]
    pig = PigLatinizer.new
    @pig = pig.to_pig_latin(phrase)

    erb :new_views
  end
end
