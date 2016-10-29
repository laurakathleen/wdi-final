class TeamUsersController < ApplicationController

	def index
		@user = User.find(params[:user_id])
		@teams = @user.teams
	end

	def create
		@team = Team.find(params[:team_id])
		@team.users.push(current_user)

		redirect_to current_user
	end


end
