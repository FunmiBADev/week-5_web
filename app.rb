require "sinatra/base"
require_relative './lib/game'
require_relative './lib/player'

class Battle < Sinatra::Base 
	enable :sessions
	# get '/' do 
	# 	'Hello Battle!'
	# 	'Testing infrastrure is working!'
	# end
	get '/'do 
		erb(:index)
	end

	post '/names' do 
		# $game = Game.new
		# $player_1 = Player.new(params[:player_1_name]) 
		# $player_2 = Player.new(params[:player_2_name])
		player_1 = Player.new(params[:player_1_name])
		player_2 = Player.new(params[:player_2_name])
		$game = Game.new(player_1, player_2)
		redirect '/play'
		# erb(:play) - now redundant cos of the redirect
	end

	get '/play' do 
		# @player_1 = $player_1
		# @player_2 = $player_2 
		@game = $game 
		erb(:play)
	end

	get '/attack' do
		# @player_1 = $player_1 
		# @player_2 = $player_2
		# @player_1.attack(@player_2) - removed when updating game
		@game = $game
		@game.attack(@game.opponent_of(@game.current_turn))
		erb(:attack) 
	end

	post '/switch_turns' do 
		$game.switch_turns
		redirect '/play'
	end

	# start the server if ruby file executed directly
	run! if app_file == $0
end