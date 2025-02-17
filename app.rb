require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
  end

  get "/square/:number" do
    square_num = params[:number].to_i
    "#{square_num**2}"
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase*number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if params[:operation] == "add"
      "#{num1 + num2}".to_s
    elsif params[:operation] == "subtract"
      "#{num2 - num1}".to_s
    elsif params[:operation] == "multiply"
      "#{num1 * num2}".to_s
    elsif params[:operation] == "divide"
      "#{num1 / num2}".to_s
    end
  end
end














