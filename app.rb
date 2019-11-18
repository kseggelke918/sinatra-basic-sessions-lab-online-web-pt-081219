require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions 
    set :session_secret, "secret_code"
  end 
  
  get '/' do 
    erb :index 
  end 
  
  post '/checkout' do 
    @sessions = sessions
    item = params["item"]
    @sessions[:item] = item 
  end 
  
end