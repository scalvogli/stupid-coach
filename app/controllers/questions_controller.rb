class QuestionsController < ApplicationController
  def ask; end

  def answer
    @userquestion = params[:question]
    @coach_answer = if @userquestion.downcase == 'i am going to work right now!'
                      'great'
                    elsif @userquestion.end_with?('?')
                      'Silly question, get dressed and go to work!'
                    else
                      "I don't care, get dressed and go to work!"
                    end
  end
end
