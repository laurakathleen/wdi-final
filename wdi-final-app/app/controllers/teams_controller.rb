class TeamsController < ApplicationController

	def index
		@teams = Team.all
	end

	def new
		@team = Team.new
	end

	def create
		@team = Team.create(team_params)
		redirect_to teams_path
	end

	def show
		@team = Team.find_by_id(params[:team_id])
	end

	private

	def team_params
		params.require(:team).permit(:months, :start_location, :end_location, :branch, :goal, :name)
	end
end
