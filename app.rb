require 'sinatra'
require 'sinatra/reloader' if development?

class Battle < Sinatra::Base
  configure :development do # not sure where this came from, code from walkthrough
    register Sinatra::Reloader
  end

    get '/' do
      'Hello Battle!'
    end


  # start the server if ruby file executed directly
  run! if app_file == $0
end