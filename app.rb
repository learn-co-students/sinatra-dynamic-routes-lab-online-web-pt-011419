require_relative 'config/environment'
require "pry"
class App < Sinatra::Base
  get "/reversename/:name" do
    @rname = params[:name].reverse
    "#{@rname}"
  end
  
  get '/square/:number' do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do
   
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @number
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end
  
  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
       "#{@number1 - @number2}"
    elsif @operation == "multiply"
       "#{@number1 * @number2}"
    else @operation == "divide"
       "#{@number1/@number2}"
    end
  end

end