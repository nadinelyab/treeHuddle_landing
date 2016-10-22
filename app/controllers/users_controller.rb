class UsersController < ApplicationController
		def new
			@user = User.new
		end

		def create
			@user = User.new(user_params)
			@user.email = @user.email + '@stanford.edu'

			@user.save
			redirect_to new_user_path
		end
	private
		def user_params
			params.require(:user).permit(:email)
		end
end