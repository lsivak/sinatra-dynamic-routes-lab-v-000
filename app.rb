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
    @say = params[:phrase].times do * params[:number].to_i
    "#{@say}"
end
get "/multiply/:num1/:num2" do
  @answer = params[:num1].to_i * params[:num2].to_i
  "#{@answer}"
end
end