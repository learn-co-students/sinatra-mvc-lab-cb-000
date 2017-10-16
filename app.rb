require'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    user_phrase = params[:user_phrase]
    puts "user input is #{user_phrase}"
    # binding.pry
    result = PigLatinizer.new
    @latin_results = result.to_pig_latin(user_phrase)
    erb :input
  end
end
