require 'sinatra'
require 'sinatra/reloader' if development?

class Battle < Sinatra::Base
  configure :development do # not sure where this came from, code from walkthrough
    register Sinatra::Reloader
  end

    get '/' do
      erb(:index)
    end

    get '/start' do
      erb(:start)
    end

    post '/names' do
      @player_1_name = params[:player_1_name]
      @player_2_name = params[:player_2_name]
      erb(:play)
    end


  # start the server if ruby file executed directly
  run! if app_file == $0
end