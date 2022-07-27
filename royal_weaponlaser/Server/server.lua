ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

ESX.RegisterUsableItem('lasergun', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('royalweapons:addlaser', source)
    xPlayer.removeInventoryItem('lasergun', 1)
end)