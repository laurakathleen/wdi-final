class User < ApplicationRecord
	has_secure_password

	def self.confirm(params)
		@user = User.find_by({username: params[:username]})
		@user ? @user.authenticate(params[:password]) : false
	end

	has_many :team_users, dependent: :destroy
	has_many :teams, through: :team_users
	has_many :logs
end
