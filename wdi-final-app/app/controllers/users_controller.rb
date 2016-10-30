class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
	    @user = User.create(user_params)
	    login(@user)
	    redirect_to @user
  	end

  	def show
  		@user = User.find_by_id(params[:id])
  		@log = Log.new
  	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :username, :password, :branch, :start_location, :end_location)
	end
end
