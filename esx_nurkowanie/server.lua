ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem('nurek', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('smerfik:nurkowanie', source)
end)