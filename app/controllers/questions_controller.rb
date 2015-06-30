class QuestionsController < ApplicationController
	def index
  end

  def new
    @user = current_user
    @question = @user.questions.build
  end

  def create
    @user = current_user
    @quetion = @user.questions.build question_params
    if @quetion.save
      redirect_to user_mypage_index_path
    else
      redirect_to new_user_questions_path
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def question_params
    params.require(:question).permit(
      :title,
      :body,
      :point
      )

  end
end
