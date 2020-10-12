class Player < ApplicationRecord
    belongs_to :team
    has_one :player_stat
    delegate :two_pointers_percentage, to: :player_stat
    delegate :three_pointers_percentage, to: :player_stat
    delegate :assists_percentage, to: :player_stat
    delegate :blocks_percentage, to: :player_stat
    delegate :free_throws_percentage, to: :player_stat
    delegate :steals_percentage, to: :player_stat
    delegate :field_goals_percentage, to: :player_stat
    delegate :player_efficiency_rating, to: :player_stat
    delegate :turn_overs_percentage, to: :player_stat
    delegate :true_shooting_percentage, to: :player_stat
    delegate :usage_rate_percentage, to: :player_stat
    delegate :turn_overs_percentage, to: :player_stat
    delegate :effective_field_goals_percentage, to: :player_stat
    delegate :total_rebounds_percentage, to: :player_stat
    ransack_alias :team, :team_name

    paginates_per 12

    def self.biggest_score_at(stat)
        joins(:player_stat)
            .order(stat => :desc)
            .first  
    end

    ransacker :full_name do |parent|
        Arel::Nodes::NamedFunction.new('CONCAT_WS', [
           Arel::Nodes.build_quoted(' '), parent.table[:first_name], parent.table[:last_name]
        ])   
    end

end