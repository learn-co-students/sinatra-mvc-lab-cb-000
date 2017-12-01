require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
     params.each_value do |value| @string = value.to_s
     end
     @piglatanized_text = pl.to_pig_latin(@string)
    erb :piglatinized
  end

end
