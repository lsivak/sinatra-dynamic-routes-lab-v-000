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
  @sayagain = params[:word1].to_s, params[:word2].to_s, params[:word3].to_s, params[:word4].to_s, params[:word5].to_s
  "#{@sayagain}"
end

get "/:operation/:number1/:number2" do
@result = "params[:number1].to_i%20params[:operation]%20params[:number2].to_i"
"#{@result}"
end
end
