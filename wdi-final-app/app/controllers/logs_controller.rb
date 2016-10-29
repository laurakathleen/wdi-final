class LogsController < ApplicationController

	def index
		@user = User.find_by_id(params[:user_id])
		@logs = @user.logs
	end

end
