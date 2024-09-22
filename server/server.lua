ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

for _, vest in ipairs(Config.Vests) do
    ESX.RegisterUsableItem(vest.itemName, function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        TriggerClientEvent('armor:useVest', source, vest.armourValue, vest.bproof_1, vest.bproof_2, vest.itemName)
    end)
end

RegisterNetEvent('armor:removeVest')
AddEventHandler('armor:removeVest', function(itemName)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem(itemName, 1)
end)