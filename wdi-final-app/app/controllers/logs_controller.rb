class LogsController < ApplicationController

	def index
		@user = User.find_by_id(params[:user_id])
		@logs = @user.logs
	end

	def new
		@log = Log.new
	end

	def create
		@log = Log.create(log_params)
		redirect_to user_logs_path
	end

	private

	def log_params
		params.require(:log).permit(:date, :mileage, :user_id)
	end

end
