class Player < ApplicationRecord
    belongs_to :team
    has_one :player_stat
    ransack_alias :team, :team_name
    
    paginates_per 12

end