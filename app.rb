require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    
    crazy = PigLatinizer.new 
    
    @object = crazy.pig(params[:user_input])
    erb :piglatinized 
  end 
end