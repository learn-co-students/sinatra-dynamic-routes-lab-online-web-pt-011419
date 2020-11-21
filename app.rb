require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name = @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    string =""
    @number.to_i.times do
      string << "#{@phrase}"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    string =""
    string = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @a = params[:number1].to_i
    @b = params[:number2].to_i
    result = 0
    if @operation == "add"
      result = @a + @b
    elsif @operation == "subtract"
      result = @a - @b
    elsif @operation == "multiply"
      result = @a * @b
    elsif @operation == "divide"
      result = @a / @b
    end
    "#{result}"
  end
end