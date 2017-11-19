require 'sinatra'
# require_relative 'app'
require_relative 'app2'

get '/' do
	erb :index
end

post '/' do 
	p @new = NewClass.new(params[:rolled_color])
	p @new.color
	@new.method_selection
	redirect '/'
end 

get '/question' do 
	# @list_of_questions = @new.random_questions
	# @question1 = @list_of_questions[0]
	# @question2 = @list_of_questions[1]
	# @question3 = @list_of_questions[2]
	# @question4 = @list_of_questions[3]
	# erb :form	
end 