require 'sinatra'
require 'sinatra/reloader'

num = rand(100) 
# guess = params['guess'].to_i
get '/' do
	guess = params['guess'].to_i
	guess_checker(guess, num)
		
	
end

def guess_checker(guess, num)
		
	if (guess < 0 || guess > 100)
		error = "Please enter a valid number"
	elsif guess > num 
		error = "Guess is too high"
	elsif guess < num
		error = "Guess is too low"
	else 
		error = "Nailed it"
	end
	erb :index, :locals => {:num => num, :error => error}	
end