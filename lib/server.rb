require 'sinatra/base'

class BattleShipsWeb < Sinatra::Base
  set :views, File.join(root,'..','views')
  get '/' do
    erb :index
  end

  get '/newgame' do
    erb :newgame
  end

  post '/board/new' do
    erb :'board/new'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
