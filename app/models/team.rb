class Team < ApplicationRecord
	has_many :team_users, dependent: :destroy
	has_many :users, through: :team_users
	has_many :logs, through: :users
end
