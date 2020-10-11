class Team < ApplicationRecord
    has_many :players
    has_one :team_stat

    paginates_per 12
    
end