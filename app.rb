require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    test_input = "He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish"

    user_input = params[:latinizer]
    @latinizer = PigLatinizer.new
    @latinized = @latinizer.to_pig_latin(user_input)
    #puts @latinized
    erb :latinized
  end
end
