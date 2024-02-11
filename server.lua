lib.addCommand('generatecarlist', {
    help = 'Generate and save vehicle data for available models on the client',
    params = {
        { name = 'processAll', help = 'Include vehicles with existing data (in the event of updated vehicle stats)', optional = true }
    },
    restricted = 'group.admin'
}, function(source, args)
    local vehicleData = lib.callback.await('Renewed-Vehicleparser:client:parsevehicles', source, args.processAll)

    if vehicleData and next(vehicleData) then
        SaveResourceFile(cache.resource, 'data/items.lua', table.concat(vehicleData), -1)
    end
end)