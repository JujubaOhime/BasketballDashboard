class Team < ApplicationRecord
    has_many :players
    has_one :team_stat
    delegate :two_pointers_percentage, to: :team_stat
    delegate :three_pointers_percentage, to: :team_stat
    delegate :effective_field_goals_percentage, to: :team_stat
    delegate :free_throws_percentage, to: :team_stat
    delegate :three_pointers_percentage, to: :team_stat
    delegate :assists_percentage, to: :team_stat
    delegate :steals_percentage, to: :team_stat
    delegate :blocks_percentage, to: :team_stat
    delegate :usage_rate_percentage, to: :team_stat
    delegate :turn_overs_percentage, to: :team_stat
    delegate :true_shooting_percentage, to: :team_stat
    delegate :total_rebounds_percentage, to: :team_stat
    delegate :player_efficiency_rating, to: :team_stat
    paginates_per 12

    
    def self.biggest_score_at(stat)
        joins(:team_stat)
            .order(stat => :desc)
            .first  
    end

end