require 'sinatra'
require_relative 'app'

get '/' do
	erb :index
end

post '/' do 
	p @rolled_color = params[:rolled_color]
	redirect '/'
end 

get '/question' do 
	@new = Object.new
	@list_of_questions = @new.random_questions
	@question1 = @list_of_questions[0]
	@question2 = @list_of_questions[1]
	@question3 = @list_of_questions[2]
	@question4 = @list_of_questions[3]
	erb :form	
end 