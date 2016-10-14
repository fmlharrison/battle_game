require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.set_game(Game.new(Player.new(params[:player_1_name], Player.new(params[:player_2_name]))
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    Game.view_game.attack(Game.view_game.turn[1])
    if Game.view_game.losing_player == nil
      erb(:attack)
    else
      redirect to('/game_over')
    end
  end

  get '/game_over' do
    erb(:game_over)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
