ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('diorsauvage', function (source)

    local xPlayer = ESX.GetPlayerFromId(source)
    
    xPlayer.removeInventoryItem('diorsauvage', 1)

    TriggerClientEvent('schoolparfum:diorsauvage', source)

end)

ESX.RegisterUsableItem('pacorabanne', function (source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('pacorabanne', 1)

    TriggerClientEvent('schoolparfum:pacorabanne', source)

end)

ESX.RegisterUsableItem('azzarowanted', function (source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('azzarowanted', 1)

    TriggerClientEvent('schoolparfum:azzarowanted', source)

end)

ESX.RegisterUsableItem('bleuchanel', function (source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('bleuchanel', 1)

    TriggerClientEvent('schoolparfum:bleuchanel', source)

end)

ESX.RegisterUsableItem('giorgioarmani', function (source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('giorgioarmani', 1)

    TriggerClientEvent('schoolparfum:giorgioarmani', source)

end)

ESX.RegisterUsableItem('valentino', function (source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('valentino', 1)

    TriggerClientEvent('schoolparfum:valentino', source)

end)

ESX.RegisterUsableItem('ladymillion', function (source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('ladymillion', 1)

    TriggerClientEvent('schoolparfum:ladymillion', source)

end)

ESX.RegisterUsableItem('chanel', function (source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('chanel', 1)

    TriggerClientEvent('schoolparfum:chanel', source)

end)

RegisterNetEvent('schoolparfum:Buydiorsauvage')
AddEventHandler('schoolparfum:Buydiorsauvage', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('diorsauvage', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Votre commande a bien été expediée !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Commande ~r~refusée")
    end
end)

RegisterNetEvent('schoolparfum:Buypacorabanne')
AddEventHandler('schoolparfum:Buypacorabanne', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('pacorabanne', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Votre commande a bien été expediée !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Commande ~r~refusée")
    end
end)

RegisterNetEvent('schoolparfum:Buyazzarowanted')
AddEventHandler('schoolparfum:Buyazzarowanted', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('azzarowanted', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Votre commande a bien été expediée !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Commande ~r~refusée")
    end
end)

RegisterNetEvent('schoolparfum:Buybleuchanel')
AddEventHandler('schoolparfum:Buybleuchanel', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bleuchanel', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Votre commande a bien été expediée !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Commande ~r~refusée")
    end
end)

RegisterNetEvent('schoolparfum:Buygiorgioarmani')
AddEventHandler('schoolparfum:Buygiorgioarmani', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('giorgioarmani', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Votre commande a bien été expediée !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Commande ~r~refusée")
    end
end)

RegisterNetEvent('schoolparfum:Buyvalentino')
AddEventHandler('schoolparfum:Buyvalentino', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('valentino', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Votre commande a bien été expediée !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Commande ~r~refusée")
    end
end)

RegisterNetEvent('schoolparfum:Buyladymillion')
AddEventHandler('schoolparfum:Buyladymillion', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('ladymillion', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Votre commande a bien été expediée !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Commande ~r~refusée")
    end
end)

RegisterNetEvent('schoolparfum:Buychanel')
AddEventHandler('schoolparfum:Buychanel', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('chanel', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Votre commande a bien été expediée !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Commande ~r~refusée")
    end
end)