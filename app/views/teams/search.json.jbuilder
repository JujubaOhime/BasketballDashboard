json.array!(@teams) do |team|
    json.name team.name 
    json.id team.team_id
  end