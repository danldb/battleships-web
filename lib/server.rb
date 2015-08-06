require 'sinatra/base'
require 'battleships'

class BattleShipsWeb < Sinatra::Base
  set :views, File.join(root,'..','views')
  enable :sessions

  get '/' do
    erb :index
  end

  get '/game/new' do
    erb :'game/new'
  end

  get '/board' do
    @name = session[:name]
    @board = $game.own_board_view $game.player_1
    erb :board 
  end

  post '/board/new' do
    $game = Game.new Player, Board
    session[:name] = params[:name]
    redirect '/board'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
