require "sinatra/base"

class Battle < Sinatra::Base 
	get '/' do 
		'Hello Battle!'
		'Testing infrastrure is working!'
	end

	run! if app_file == $0
end