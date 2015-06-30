class PagesController < ApplicationController
	def index
		@user = current_user
		@questions = Question.all
	end

	def find_user(question)
		user = User.find(question.user_id)
		name = user.info.nickname
	end
	def show
	end
	def redirect_mypage
		if user_signed_in?
			#redirect_to user_mypage_index_path(current_user)
		end
	end

	helper_method :redirect_mypage, :find_user
end
