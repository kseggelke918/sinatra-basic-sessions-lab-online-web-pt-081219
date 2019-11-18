require_relative 'config/environment'
require 'securerandom'

class App < Sinatra::Base
  
  configure do 
    enable :sessions 
    set :session_secret, "secret_code"
  end 
  
  get '/' do 
    erb :index 
  end 
  
  post '/checkout' do 
    @item = params[:item]
    @session = session 
    erb :checkout 
  end 
  
end