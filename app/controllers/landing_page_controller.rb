class LandingPageController < ApplicationController

    def index
        @teams = Team.all
        @players = Player.all
        @teams_stats = TeamStat.all
        @players_stats = PlayerStat.all
        @best_player_with_two_points_percentage = Player.biggest_score_at(:two_pointers_percentage)
        @best_player_with_salary = Player.biggest_score_at(:salary)
        @best_player_with_field_goals_percentage =  Player.biggest_score_at(:effective_field_goals_percentage)
        @best_player_with_three_pointers_percentage = Player.biggest_score_at(:three_pointers_percentage)
        @best_player_with_free_throws_percentage = Player.biggest_score_at(:free_throws_percentage)
        @best_player_with_total_rebounds_percentage = Player.biggest_score_at(:total_rebounds_percentage)
        @best_player_with_true_shooting_percentage = Player.biggest_score_at(:true_shooting_percentage)
        @best_player_with_player_efficiency_rating = Player.biggest_score_at(:player_efficiency_rating)
        @best_player_with_assists_percentage = Player.biggest_score_at(:assists_percentage)
        @best_player_with_steals_percentage = Player.biggest_score_at(:steals_percentage)
        @best_player_with_blocks_percentage = Player.biggest_score_at(:blocks_percentage)
        @best_player_with_turn_overs_percentage = Player.biggest_score_at(:turn_overs_percentage)
        @best_player_with_usage_rate_percentage = Player.biggest_score_at(:usage_rate_percentage)
        @best_team_with_two_points_percentage = Team.biggest_score_at(:two_pointers_percentage)
        @best_team_with_field_goals_percentage =  Team.biggest_score_at(:effective_field_goals_percentage)
        @best_team_with_three_pointers_percentage = Team.biggest_score_at(:three_pointers_percentage)
        @best_team_with_free_throws_percentage = Team.biggest_score_at(:free_throws_percentage)
        @best_team_with_total_rebounds_percentage = Team.biggest_score_at(:total_rebounds_percentage)
        @best_team_with_true_shooting_percentage = Team.biggest_score_at(:true_shooting_percentage)
        @best_team_with_player_efficiency_rating = Team.biggest_score_at(:player_efficiency_rating)
        @best_team_with_assists_percentage = Team.biggest_score_at(:assists_percentage)
        @best_team_with_steals_percentage = Team.biggest_score_at(:steals_percentage)
        @best_team_with_blocks_percentage = Team.biggest_score_at(:blocks_percentage)
        @best_team_with_turn_overs_percentage = Team.biggest_score_at(:turn_overs_percentage)
        @best_team_with_usage_rate_percentage = Team.biggest_score_at(:usage_rate_percentage)

    end
end
