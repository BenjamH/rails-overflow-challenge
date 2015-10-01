class VotesController < ApplicationController
  # def new
  #   @vote = Vote.new
  # end

  def create
    p params
    p "*"*1000
    @question = Question.find_by(id: params[:question_id])
    @vote = @question.votes.new(count: 1)
    if @vote.save
      redirect_to @question
    else
      render 'question/show'
    end
  end


  def destroy
    @question = Question.find_by(id: params[:question_id])
    @vote = @question.votes.last
    @vote.destroy
    redirect_to @question
  end
end
