class PagesController < ApplicationController

  # retrieve question from the get request
  # run the question through the logic
  # display the response on the answer page

  def ask
  end

  def answer
    @question = params[:question]

    if params[:question] == "I am going to work"
      @answer = "Great!"
    elsif params[:question].include?('?')
      @answer = "I don't care, get dressed and go to work!"
    elsif params[:question].include? "!"
      @answer =  "Silly question, get dressed and go to work!"
    end
  end

end
