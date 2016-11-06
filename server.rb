require 'pry'
require 'sinatra'
$default_options = ["No", "Yes", "Perhaps, what does your intuition tell you?", "Maybe", "Ask your Mom.", "Sure", "Definitely!", "For sure!", "No way, man"]
$answer_options = ["No", "Yes", "Perhaps, what does your intuition tell you?", "Maybe", "Ask your Mom.", "Sure", "Definitely!", "For sure!", "No way, man"]

get '/' do
  erb :index
end

get '/ask' do
  erb :ask
end

post '/ask' do
  @user_question = params[:user_question]
  $answer_options
  erb :result
end

get '/add' do
  erb :add
end

post '/add' do
  @user_answer = params[:user_answer]
  $answer_options.push(@user_answer)
  @answer_options = $answer_options
  erb :added
end

get '/reset' do
  $answer_options = $default_options
  @answer_options = $answer_options
 erb :reset
end

get '/answer' do
  $answer_options
  erb :answer
end
