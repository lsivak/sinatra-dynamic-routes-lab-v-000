require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}."
  end

  get "/say/:number/:phrase" do
    @say = params[:phrase] * params[:number].to_i
    "#{@say}"
end
get "/say/:word1/:word2/:word3/:word4/:word5" do
  @sayagain = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  "#{@sayagain}"
end

get "/:operation/:number1/:number2" do

@number1 =  params[:number1].to_1
@number2 =  params[:number2].to_i
@operation = params[:operation]
 when @operations = "add"
   (@number1 + @number2).to_s
end
when 
  @operations = "subtract"
  (@number1 - @number2).to_s
end
when 
  @operations = "multiply"
  (@number1 * @number2).to_s
end
when 
  @operations = "divide"
  (@number1 / @number2).to_s
end
end
end
