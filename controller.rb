require 'sinatra'
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
	session[:rolled_color] = params[:rolled_color] 
	@correct_question = @new.method_selection
	@other_question = @new.random_questions
	p session[:correct_answer] = @correct_question
	session[:other_question] = @other_question
	redirect '/'
end 

get '/question' do
	@list_of_questions = session[:other_question]
	@list_of_questions << session[:correct_answer]
	order = [0,1,2,3].shuffle				
	@question1 = @list_of_questions[order[0]]
	@question2 = @list_of_questions[order[1]]
	@question3 = @list_of_questions[order[2]]
	@question4 = @list_of_questions[order[3]]
	erb :form	
end 

post '/question' do
	# "Hello World"
	p response = params[:color_choice]
	# p @response
	session[:correct_answer]
	if response == session[:correct_answer]
		session[:response] = "You're Correct!"
	else 
		session[:response] = "You're incorrect"
	end		
	p session[:response]
	redirect '/test'
end 

# get '/result' do 
# 	p @test= session[:response]
# 	erb :show
# end 

get '/test' do 
	p session[:rolled_color]
	@test = session[:response]
	# sleep 2 
	erb :show
end 