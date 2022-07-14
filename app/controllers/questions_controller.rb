class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach(@question)
  end

  def coach(rep)
    work = "I'm going to work"
    if rep == work
      'Great!'
    elsif rep.end_with?('?')
      'Silly question, get dressed and go to work'
    else
      "I don't care, get dressed and go to work"
    end
  end
end
