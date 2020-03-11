require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    
    yall_trippin = PigLatinizer.new 
    
    @piglatinized = yall_trippin.pig(params[:user_input])
    erb :piglatinized 
  end 
end