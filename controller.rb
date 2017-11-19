require 'sinatra'
# require_relative 'app'
require_relative 'app2'

configure do
	enable :sessions
	set :session_secret, "secret"
end

enable :sessions

get '/' do
	erb :index
end

post '/' do 
	@new = NewClass.new(params[:rolled_color])
	@correct_question = @new.method_selection
	@other_question = @new.random_questions
	# p @correct_question
	p session[:correct_answer] = @correct_question
	p session[:other_question] = @other_question
	redirect '/'
end 

get '/question' do
	session[:correct_answer] 
	session[:other_question]
	@list_of_questions = session[:other_question]
	@list_of_questions << session[:correct_answer] 
	p @list_of_questions
	@question1 = @list_of_questions[0]
	@question2 = @list_of_questions[1]
	@question3 = @list_of_questions[2]
	@question4 = @list_of_questions[3]
	erb :form	
end 