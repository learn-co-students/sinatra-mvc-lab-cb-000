require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  INPUT_ACTION = '/input'
  PHRASE_SYMBOL = :your_phrase
  get '/' do
    erb :user_input
  end

  post INPUT_ACTION do
    @pig_latinizer = PigLatinizer.new(params[PHRASE_SYMBOL])
    erb :result
  end

  def format_label(symbol)
    return symbol.to_s.split("_").collect{|s| s.capitalize}.join(" ")
  end

end
