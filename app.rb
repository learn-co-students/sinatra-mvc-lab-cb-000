require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/piglatinize" do

    @pig_latinizer = PigLatinizer.new

    erb :piglatinize

  end


end
