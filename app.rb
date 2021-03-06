require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do # not sure where this came from, code from walkthrough
    register Sinatra::Reloader
  end

    get '/' do
      erb(:index)
    end

    post '/names' do
      player_1 = Player.new(params[:player_1_name])
      player_2 = Player.new(params[:player_2_name])
      $game = Game.new(player_1, player_2)
      redirect '/play'
    end

    get '/play' do
      @game = $game
      erb(:play)
    end

    get '/attack' do
      @game = $game
      # @game.attack(@game.opponent_of(@game.current_turn))
      erb(:attack)
    end

    post '/attack' do
      # Attack.run($game.opponent_of($game.current_turn)) #.run is a new method!
      # @game.attack(@game.opponent_of(@game.current_turn)) #Or use this method from previous version
      $game.attack($game.opponent_of($game.current_turn))
      if $game.game_over?
        redirect '/game-over'
      else
        redirect '/attack'
      end
      # @game.attack(@game.opponent_of(@game.current_turn)) Or use this method from previous version
    end

    post '/switch-turns' do
      $game.switch_turns
      redirect('/play')
    end

    get '/game-over' do
      @game = $game
      erb :game_over
    end

  # start the server if ruby file executed directly
  run! if app_file == $0
end