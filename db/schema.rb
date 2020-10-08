# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "player_stats", primary_key: "stat_id", id: :integer, default: nil, force: :cascade do |t|
    t.integer "team_id", null: false
    t.integer "player_id", null: false
    t.integer "season_type", null: false
    t.integer "season", null: false
    t.string "name", limit: 26, null: false
    t.string "team", limit: 3, null: false
    t.string "position", limit: 2
    t.integer "started", null: false
    t.integer "global_team_id", null: false
    t.string "updated", limit: 19, null: false
    t.integer "games", null: false
    t.decimal "fantasy_points", precision: 6, scale: 1, null: false
    t.integer "minutes", null: false
    t.integer "seconds", null: false
    t.decimal "field_goals_made", precision: 5, scale: 1, null: false
    t.decimal "field_goals_attempted", precision: 6, scale: 1, null: false
    t.decimal "field_goals_percentage", precision: 5, scale: 1, null: false
    t.decimal "effective_field_goals_percentage", precision: 5, scale: 1, null: false
    t.decimal "two_pointers_made", precision: 5, scale: 1, null: false
    t.decimal "two_pointers_attempted", precision: 6, scale: 1, null: false
    t.decimal "two_pointers_percentage", precision: 5, scale: 1, null: false
    t.decimal "three_pointers_made", precision: 5, scale: 1, null: false
    t.decimal "three_pointers_attempted", precision: 6, scale: 1, null: false
    t.decimal "three_pointers_percentage", precision: 5, scale: 1, null: false
    t.decimal "free_throws_made", precision: 5, scale: 1, null: false
    t.decimal "free_throws_attempted", precision: 5, scale: 1, null: false
    t.decimal "free_throws_percentage", precision: 5, scale: 1, null: false
    t.decimal "offensive_rebounds", precision: 5, scale: 1, null: false
    t.decimal "defensive_rebounds", precision: 5, scale: 1, null: false
    t.decimal "rebounds", precision: 6, scale: 1, null: false
    t.decimal "offensive_rebounds_percentage", precision: 5, scale: 1, null: false
    t.decimal "defensive_rebounds_percentage", precision: 5, scale: 1, null: false
    t.decimal "total_rebounds_percentage", precision: 4, scale: 1, null: false
    t.decimal "assists", precision: 5, scale: 1, null: false
    t.decimal "steals", precision: 5, scale: 1, null: false
    t.decimal "blocked_shots", precision: 5, scale: 1, null: false
    t.decimal "turnovers", precision: 5, scale: 1, null: false
    t.decimal "personal_fouls", precision: 5, scale: 1, null: false
    t.decimal "points", precision: 6, scale: 1, null: false
    t.decimal "true_shooting_attempts", precision: 6, scale: 1, null: false
    t.decimal "true_shooting_percentage", precision: 5, scale: 1, null: false
    t.decimal "player_efficiency_rating", precision: 5, scale: 1, null: false
    t.decimal "assists_percentage", precision: 4, scale: 1, null: false
    t.decimal "steals_percentage", precision: 4, scale: 1, null: false
    t.decimal "blocks_percentage", precision: 4, scale: 1, null: false
    t.decimal "turn_overs_percentage", precision: 4, scale: 1, null: false
    t.decimal "usage_rate_percentage", precision: 4, scale: 1, null: false
    t.decimal "fantasy_points_fan_duel", precision: 6, scale: 1, null: false
    t.decimal "fantasy_points_draft_kings", precision: 6, scale: 1, null: false
    t.decimal "fantasy_points_yahoo", precision: 6, scale: 1, null: false
    t.decimal "plus_minus", precision: 6, scale: 1, null: false
    t.decimal "double_doubles", precision: 4, scale: 1, null: false
    t.decimal "triple_doubles", precision: 4, scale: 1, null: false
    t.decimal "fantasy_points_fantasy_draft", precision: 6, scale: 1, null: false
    t.string "is_closed", limit: 5, null: false
    t.string "lineup_confirmed", limit: 30
    t.string "lineup_status", limit: 9, null: false
  end

  create_table "players", primary_key: "player_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "sports_data_id", limit: 30
    t.string "status", limit: 6, null: false
    t.integer "team_id", null: false
    t.string "team", limit: 3, null: false
    t.integer "jersey"
    t.string "position_category", limit: 1, null: false
    t.string "position", limit: 2, null: false
    t.string "first_name", limit: 12, null: false
    t.string "last_name", limit: 20, null: false
    t.integer "height", null: false
    t.integer "weight", null: false
    t.string "birth_date", limit: 19
    t.string "birth_city", limit: 21
    t.string "birth_state", limit: 22
    t.string "birth_country", limit: 6
    t.string "high_school", limit: 30
    t.string "college", limit: 25
    t.integer "salary"
    t.string "photo_url", limit: 92, null: false
    t.integer "experience", null: false
    t.string "sport_radar_player_id", limit: 36
    t.integer "rotoworld_player_id"
    t.integer "roto_wire_player_id"
    t.integer "fantasy_alarm_player_id"
    t.integer "stats_player_id", null: false
    t.integer "sports_direct_player_id"
    t.integer "xml_team_player_id"
    t.string "injury_status", limit: 9, null: false
    t.string "injury_body_part", limit: 9, null: false
    t.string "injury_start_date", limit: 19
    t.string "injury_notes", limit: 9, null: false
    t.integer "fan_duel_player_id", null: false
    t.integer "draft_kings_player_id", null: false
    t.integer "yahoo_player_id", null: false
    t.string "fan_duel_name", limit: 24, null: false
    t.string "draft_kings_name", limit: 24, null: false
    t.string "yahoo_name", limit: 24, null: false
    t.string "depth_chart_position", limit: 2
    t.integer "depth_chart_order"
    t.integer "global_team_id", null: false
    t.string "fantasy_draft_name", limit: 24, null: false
    t.integer "fantasy_draft_player_id", null: false
    t.integer "usa_today_player_id"
    t.string "usa_today_headshot_url", limit: 54
    t.string "usa_today_headshot_no_background_url", limit: 54
    t.string "usa_today_headshot_updated", limit: 19
    t.string "usa_today_headshot_no_background_updated", limit: 19
    t.integer "nba_dot_com_player_id", null: false
  end

  create_table "team_stats", primary_key: "stat_id", id: :integer, default: nil, force: :cascade do |t|
    t.integer "team_id", null: false
    t.integer "season_type", null: false
    t.integer "season", null: false
    t.string "name", limit: 22, null: false
    t.string "team", limit: 3, null: false
    t.integer "wins", null: false
    t.integer "losses", null: false
    t.string "opponent_position", limit: 30
    t.decimal "possessions", precision: 7, scale: 1, null: false
    t.integer "global_team_id", null: false
    t.string "updated", limit: 19, null: false
    t.integer "games", null: false
    t.decimal "fantasy_points", precision: 7, scale: 1, null: false
    t.integer "minutes", null: false
    t.integer "seconds", null: false
    t.decimal "field_goals_made", precision: 6, scale: 1, null: false
    t.decimal "field_goals_attempted", precision: 7, scale: 1, null: false
    t.decimal "field_goals_percentage", precision: 4, scale: 1, null: false
    t.decimal "effective_field_goals_percentage", precision: 4, scale: 1, null: false
    t.decimal "two_pointers_made", precision: 6, scale: 1, null: false
    t.decimal "two_pointers_attempted", precision: 6, scale: 1, null: false
    t.decimal "two_pointers_percentage", precision: 4, scale: 1, null: false
    t.decimal "three_pointers_made", precision: 6, scale: 1, null: false
    t.decimal "three_pointers_attempted", precision: 6, scale: 1, null: false
    t.decimal "three_pointers_percentage", precision: 4, scale: 1, null: false
    t.decimal "free_throws_made", precision: 6, scale: 1, null: false
    t.decimal "free_throws_attempted", precision: 6, scale: 1, null: false
    t.decimal "free_throws_percentage", precision: 5, scale: 1, null: false
    t.decimal "offensive_rebounds", precision: 6, scale: 1, null: false
    t.decimal "defensive_rebounds", precision: 6, scale: 1, null: false
    t.decimal "rebounds", precision: 6, scale: 1, null: false
    t.string "offensive_rebounds_percentage", limit: 30
    t.string "defensive_rebounds_percentage", limit: 30
    t.string "total_rebounds_percentage", limit: 30
    t.decimal "assists", precision: 6, scale: 1, null: false
    t.decimal "steals", precision: 6, scale: 1, null: false
    t.decimal "blocked_shots", precision: 5, scale: 1, null: false
    t.decimal "turnovers", precision: 6, scale: 1, null: false
    t.decimal "personal_fouls", precision: 6, scale: 1, null: false
    t.decimal "points", precision: 7, scale: 1, null: false
    t.decimal "true_shooting_attempts", precision: 7, scale: 1, null: false
    t.decimal "true_shooting_percentage", precision: 4, scale: 1, null: false
    t.string "player_efficiency_rating", limit: 30
    t.string "assists_percentage", limit: 30
    t.string "steals_percentage", limit: 30
    t.string "blocks_percentage", limit: 30
    t.string "turn_overs_percentage", limit: 30
    t.string "usage_rate_percentage", limit: 30
    t.decimal "fantasy_points_fan_duel", precision: 7, scale: 1, null: false
    t.decimal "fantasy_points_draft_kings", precision: 7, scale: 1, null: false
    t.decimal "fantasy_points_yahoo", precision: 7, scale: 1, null: false
    t.decimal "plus_minus", precision: 7, scale: 1, null: false
    t.decimal "double_doubles", precision: 5, scale: 1, null: false
    t.decimal "triple_doubles", precision: 4, scale: 1, null: false
    t.decimal "fantasy_points_fantasy_draft", precision: 7, scale: 1, null: false
    t.string "is_closed", limit: 5, null: false
    t.string "lineup_confirmed", limit: 30
    t.string "lineup_status", limit: 9, null: false
    t.integer "opponent_stat_stat_id", null: false
    t.integer "opponent_stat_team_id", null: false
    t.integer "opponent_stat_season_type", null: false
    t.integer "opponent_stat_season", null: false
    t.string "opponent_stat_name", limit: 22, null: false
    t.string "opponent_stat_team", limit: 3, null: false
    t.integer "opponent_stat_wins", null: false
    t.integer "opponent_stat_losses", null: false
    t.string "opponent_stat_opponent_position", limit: 30
    t.decimal "opponent_stat_possessions", precision: 7, scale: 1, null: false
    t.integer "opponent_stat_global_team_id", null: false
    t.string "opponent_stat_updated", limit: 19, null: false
    t.integer "opponent_stat_games", null: false
    t.decimal "opponent_stat_fantasy_points", precision: 7, scale: 1, null: false
    t.integer "opponent_stat_minutes", null: false
    t.integer "opponent_stat_seconds", null: false
    t.decimal "opponent_stat_field_goals_made", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_field_goals_attempted", precision: 7, scale: 1, null: false
    t.decimal "opponent_stat_field_goals_percentage", precision: 4, scale: 1, null: false
    t.decimal "opponent_stat_effective_field_goals_percentage", precision: 4, scale: 1, null: false
    t.decimal "opponent_stat_two_pointers_made", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_two_pointers_attempted", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_two_pointers_percentage", precision: 4, scale: 1, null: false
    t.decimal "opponent_stat_three_pointers_made", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_three_pointers_attempted", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_three_pointers_percentage", precision: 4, scale: 1, null: false
    t.decimal "opponent_stat_free_throws_made", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_free_throws_attempted", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_free_throws_percentage", precision: 5, scale: 1, null: false
    t.decimal "opponent_stat_offensive_rebounds", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_defensive_rebounds", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_rebounds", precision: 6, scale: 1, null: false
    t.string "opponent_stat_offensive_rebounds_percentage", limit: 30
    t.string "opponent_stat_defensive_rebounds_percentage", limit: 30
    t.string "opponent_stat_total_rebounds_percentage", limit: 30
    t.decimal "opponent_stat_assists", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_steals", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_blocked_shots", precision: 5, scale: 1, null: false
    t.decimal "opponent_stat_turnovers", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_personal_fouls", precision: 6, scale: 1, null: false
    t.decimal "opponent_stat_points", precision: 7, scale: 1, null: false
    t.decimal "opponent_stat_true_shooting_attempts", precision: 7, scale: 1, null: false
    t.decimal "opponent_stat_true_shooting_percentage", precision: 4, scale: 1, null: false
    t.string "opponent_stat_player_efficiency_rating", limit: 30
    t.string "opponent_stat_assists_percentage", limit: 30
    t.string "opponent_stat_steals_percentage", limit: 30
    t.string "opponent_stat_blocks_percentage", limit: 30
    t.string "opponent_stat_turn_overs_percentage", limit: 30
    t.string "opponent_stat_usage_rate_percentage", limit: 30
    t.decimal "opponent_stat_fantasy_points_fan_duel", precision: 7, scale: 1, null: false
    t.decimal "opponent_stat_fantasy_points_draft_kings", precision: 7, scale: 1, null: false
    t.decimal "opponent_stat_fantasy_points_yahoo", precision: 7, scale: 1, null: false
    t.decimal "opponent_stat_plus_minus", precision: 7, scale: 1, null: false
    t.decimal "opponent_stat_double_doubles", precision: 5, scale: 1, null: false
    t.decimal "opponent_stat_triple_doubles", precision: 4, scale: 1, null: false
    t.decimal "opponent_stat_fantasy_points_fantasy_draft", precision: 7, scale: 1, null: false
    t.string "opponent_stat_is_closed", limit: 5, null: false
    t.string "opponent_stat_lineup_confirmed", limit: 30
    t.string "opponent_stat_lineup_status", limit: 9, null: false
    t.string "opponent_stat_opponent_stat", limit: 30
  end

  create_table "teams", primary_key: "team_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "key", limit: 3, null: false
    t.string "active", limit: 4, null: false
    t.string "city", limit: 13, null: false
    t.string "name", limit: 13, null: false
    t.integer "league_id", null: false
    t.integer "stadium_id", null: false
    t.string "conference", limit: 7, null: false
    t.string "division", limit: 9, null: false
    t.string "primary_color", limit: 6, null: false
    t.string "secondary_color", limit: 6, null: false
    t.string "tertiary_color", limit: 6
    t.string "quaternary_color", limit: 6
    t.text "wikipedia_logo_url", null: false
    t.text "wikipedia_word_mark_url"
    t.integer "global_team_id", null: false
    t.integer "nba_dot_com_team_id", null: false
  end

  add_foreign_key "player_stats", "teams", primary_key: "team_id", name: "player_stats_teams_team_id_fk"
  add_foreign_key "players", "teams", primary_key: "team_id", name: "players_teams_team_id_fk"
  add_foreign_key "team_stats", "teams", primary_key: "team_id", name: "team_stats_teams_team_id_fk"
end
