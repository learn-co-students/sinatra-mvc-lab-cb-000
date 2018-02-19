require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do #create a get request path
    erb :user_input #renders the form from user_input.erb
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.to_pig_latin(params[:user_phrase])
    erb :results
  end

end
