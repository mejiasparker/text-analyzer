require './config/environment'
require './app/models/text-analyzer'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  post '/results' do
    
    #params.to_s
    @user_input = params[:textinput].split(/\r\n\r\n/)
    user_text = params[:textinput]
    @lines = linecount(user_text)
    @totalchars = totalchars(user_text)
    @nowhites = nowhitespace(user_text)
    @totalwords = wordcount(user_text)
    @sentences = sentences(user_text)
    @paragraphs = paragraphs(user_text)
    @avg_sents = avg_sentences(user_text)
    @avg_words = avg_words(user_text)
    @keywords = keywords(user_text)
    erb :results
    
  end
  
end