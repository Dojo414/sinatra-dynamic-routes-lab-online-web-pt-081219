require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse 
  end
  
  get '/square/:number' do 
    @number = params[:number].to_i 
    (@number ** 2).to_s  
  end
  
  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    binding.pry
  end

end