require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get '/say/:num/:phrase' do

    @number = params[:num].to_i
    @phrase = params[:phrase]
    @string = ""
    @number.times do
      @string += @phrase
      @string += "\n"
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params[:word1]+ " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    @phrase
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
        "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
        "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_f / params[:number2].to_i}"
    else
      "ERROR"
    end
  end

end
