class InfosController < ApplicationController

  def new
  	@user = current_user
  	@info = @user.build_info
  end

  def create
  	@user = current_user
  	@info = @user.build_info info_params
  	if @info.save
  		redirect_to user_mypage_index_path
  	else
  		redirect_to new_user_info_path
  	end

  end

  def update
  end

  private 
  def info_params
    params.require(:info).permit(
      :nickname,
      :first_name,
      :last_name,
      :birthday
      )
  end
end
