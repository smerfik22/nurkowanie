ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem('nurek', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('smerfik:nurkowanie', source)
end)
RegisterServerEvent('smerfik:remnur')
AddEventHandler('smerfik:remnur', function(t)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('nurek', 1)
end)