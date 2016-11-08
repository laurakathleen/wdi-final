class LogsController < ApplicationController

	def index
		@user = User.find_by_id(params[:user_id])
		@logs = @user.logs.order(date: :desc)
		def calendar 
			@log = @user.logs.all
		end
	end

	def new
		@log = Log.new
	end

	def create
		@log = Log.create(log_params)
		@user = User.find_by_id(params[:user_id])
		redirect_to user_path(@user)
	end

	def show
		@log = Log.find_by_id(params[:log_id])
		@user = @log.user
		def calendar_show 
			@log = @user.log
		end
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
		@user = @log.user
		@log.destroy
		redirect_to @user
	end

	private

	def log_params
		params.require(:log).permit(:date, :mileage, :user_id)
	end

end
