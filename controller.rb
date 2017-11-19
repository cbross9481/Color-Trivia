require 'sinatra'
require_relative 'app'

get '/' do
	erb :index
end

get '/question' do 
	@new_question = Object.new
	@question1 = @new_question.random_questions
	@question2 = @new_question.random_questions
	@question3 = @new_question.random_questions
	@question4 = @new_question.random_questions
	erb :form	
end 