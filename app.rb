require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $battle = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @battle = $battle
    erb(:play)
  end

  get '/attack' do
    @battle = $battle
    @battle.attack(@battle.turn[1])
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
