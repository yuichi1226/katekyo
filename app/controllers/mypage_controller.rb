class MypageController < ApplicationController
	before_action :set_info
  def index
  	@user = current_user
    @info = @user.info
    @my_questions = @user.questions.all
  end
  
  def new
  end
end
