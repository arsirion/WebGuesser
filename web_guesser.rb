require 'sinatra'
require 'sinatra/reloader'

get '/' do
	num = rand(100)
	'This random number is ' + num.to_s
end