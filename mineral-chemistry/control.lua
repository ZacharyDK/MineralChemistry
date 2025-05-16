 

script.on_init(function()
    local jump_start = settings.startup["freeplay-jump-start-items"].value 

    if(jump_start) then
        remote.call("freeplay", "set_ship_items", 
        {
            ["iron-plate"] = 200,
            ["copper-plate"] = 200,
        })
        remote.call("freeplay", "set_created_items", {
            ["medium-electric-pole"] = 5,
            ["furnace"] = 1,
            ["burner-mining-drill"] = 3,
            ["inserter"] = 5,
            ["froth-floatation-plant"] = 1,
            ["pipe"] = 100,
            ["solar-panel"] = 2,
            ["offshore-pump"] = 1,
            ["chemical-plant"] = 1,
        })
        remote.call("freeplay", "set_debris_items", {
            ["iron-plate"] = 50,
            ["copper-plate"] = 50,
        })
    end


end)



script.on_event(defines.events.on_player_joined_game, function(event)
    local jump_start = settings.startup["jump-start-to-chemical-science"].value 

    if jump_start then 
        local player = game.players[event.player_index]
        player.force.technologies["chemical-science-pack"].research_recursive()
    end


end)
