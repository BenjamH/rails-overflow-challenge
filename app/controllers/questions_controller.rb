class QuestionsController < ApplicationController
  def index
    @questions=Question.all
  end

  def show
    @question=Question.find_by(id: params[:id])
  end

  def new
    @question=Question.new
  end

  def create
    p current_user
    p "*"*100
    @current_user=User.find_by(id: current_user.id)
    @question=@current_user.questions.new(question_params)

    if @question.save
      redirect_to welcome_index_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def question_params
    params.require(:question).permit(:title, :description)
  end

end
