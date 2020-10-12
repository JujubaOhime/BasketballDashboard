json.array!(@players) do |player|
    json.name player.first_name + ' ' + player.last_name 
  end 