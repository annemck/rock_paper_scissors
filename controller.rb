require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game.rb')


get "/game/:player1/:player2" do
  round = Game.new(params[:player1], params[:player2])
  if params[:player1] != params[:player2]
    @hand = round.check_hand
    @winner = round.check_winner
    erb (:result)
  else
    erb (:draw_result)
  end
end

get "/" do
  erb (:welcome)
end
