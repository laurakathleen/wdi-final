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

	def show
		@log = Log.find_by_id(params[:log_id])
		@user = @log.user
	end

	def edit
		log_id = params[:log_id]
		@log = Log.find_by_id(log_id)
	end

	def update
		log_id = params[:log_id]
		@log = Log.find_by_id(log_id)
		@log.update_attributes(log_params)
		redirect_to log_path
	end

	def destroy
		log_id = params[:log_id]
		@log = Log.find_by_id(log_id)
		@log.destroy
		redirect_to user_logs_path(@user)
	end

	private

	def log_params
		params.require(:log).permit(:date, :mileage, :user_id)
	end

end
