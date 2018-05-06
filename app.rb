require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    # Create an instance variables
    # don't need this as the views render  "user_output.erb" can access the params
    #@phrase = params[:user_phrase])

    # Create a new instance of the class
    @pig_latinizer = PigLatinizer.new

    erb :user_output
  end
end
