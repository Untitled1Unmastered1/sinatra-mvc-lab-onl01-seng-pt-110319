require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    
    yall_trippin = 
    
    @piglatinized = PigLatinizer.new(params[:user_input])
    erb :piglatinized 
  end 
end