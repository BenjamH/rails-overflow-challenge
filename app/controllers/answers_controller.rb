class AnswersController < ApplicationController

  def new
    @answer=Answer.new
  end

  def show
  end

  def create
    @question=Question.find_by(id: params[:question_id])
    @answer=current_user.answers.new(answer_params)
    if @answer.save
      @question.answers << @answer
      redirect_to welcome_index_path
    else
      render 'new'
    end
  end

  def destroy
  end


  private

  def answer_params
    params.require(:answer).permit(:title, :description)
  end

end
