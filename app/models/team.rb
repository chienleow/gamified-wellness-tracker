class Team < ApplicationRecord
    has_many :users

    
    scope :ordered_by_most_users, -> { Team.joins(:users).group("users.team_id").order('count(users.team_id) desc').limit(1) }
end
