CreateThread(function ()
    while true do
        Wait(500)

        local playerId          = PlayerPedId()
        local playerCoords      = GetEntityCoords(playerId)
        local playerHeading     = GetEntityHeading(playerId)

        SendNuiMessage(json.encode {
            type    = 'position',
            x       = playerCoords.x,
            y       = playerCoords.y,
            z       = playerCoords.z,
            heading = playerHeading,
        })
    end
end)

