class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def set_info
  	if current_user.present? && current_user.info.nil?
  		redirect_to new_user_info_path
  	end
  end
  protect_from_forgery with: :exception
end
