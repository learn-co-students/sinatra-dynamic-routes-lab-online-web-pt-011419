require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i**2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @sent = params[:phrase].to_s * params[:number].to_i
    @sent
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sent = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]
    "#{@sent}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    
   if @operation == "add"
    answer = @number1 + @number2

   elsif @operation == "subtract"
    answer = @number2 - @number1

   elsif @operation == "multiply"
    answer = @number1 * @number2
    
   elsif @operation == "divide"
    answer = @number1 / @number2

   end
   answer.to_s


  end
end





# get '/multiply/:num1/:num2' do
#   @product = params[:num1].to_i * params[:num2].to_i
#   "#{@product}"
# end

# get "/hello/:name" do
#   @user_name = params[:name]
#   "Hello #{@user_name}!"
# end