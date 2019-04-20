require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
 get '/reversename/:name' do 
 @name = params[:name].reverse
 end
 
 get '/square/:number' do 
   (params[:number].to_i ** 2).to_s
   
 end 
 
 get '/say/:number/:phrase' do 
   @phrase = ''
   
   params[:number].to_i.times do 
     @phrase += params[:phrase]
   end
   @phrase
 end 
 
 get '/say/:word1/:word2/:word3/:word4/:word5' do
 
   "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
 end 
 
 get '/:operation/:number1/:number2' do
   case params[:operation]
   when 'add'
     (params[:number1].to_i + params[:number2].to_i).to_s
     when 'subtract'
       (params[:number1].to_i - params[:number2].to_i).to_s
       when 'multiply'
         (params[:number1].to_i * params[:number2].to_i).to_s
         when 'divide'
     (params[:number1].to_i / params[:number2].to_i).to_s
    end 
  end 
end