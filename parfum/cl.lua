ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

local position = {
    {x = -1535.75,   y = 97.77,  z = 56.78},        
}  

Menu              = {}
Menu.DrawDistance = 100
Menu.Size         = {x = 1.0, y = 1.0, z = 1.0}
Menu.Color        = {r = 255, g = 0, b = 0}
Menu.Type         = 29

RMenu.Add('parfum', 'main', RageUI.CreateMenu("Catalogue", "Catalogue"))
RMenu.Add('parfum', 'homme', RageUI.CreateSubMenu(RMenu:Get('parfum', 'main'), "Parfum Homme", "Parfum Homme"))
RMenu.Add('parfum', 'femme', RageUI.CreateSubMenu(RMenu:Get('parfum', 'main'), "Parfum Femme", "Parfum Femme"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('parfum', 'main'), true, false, true, function()


            RageUI.Button("Parfum Homme", nil, {RightLabel = "→"},true, function ()
            end, RMenu:Get('parfum', 'homme'))


            RageUI.Button("Parfum Femme", nil, {RightLabel = "→"},true, function ()
            end, RMenu:Get('parfum', 'femme'))

        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('parfum', 'homme'), true, false, true, function()
        
            RageUI.Button("Dior Sauvage", nil, {RightLabel = "~g~Commander"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    ESX.ShowAdvancedNotification('~w~SprayNet', '~r~Paiement effectuée', '~w~Votre commande est en cours de traitement ...', 'CHAR_LESTER_DEATHWISH')
                    Citizen.Wait(20000)
                    local playerPed = PlayerPedId()
                    TriggerServerEvent('schoolparfum:Buydiorsauvage')
                end
            end)


            RageUI.Button("Paco Rabanne 1 Million", nil, {RightLabel = "~g~Commander"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    ESX.ShowAdvancedNotification('~w~SprayNet', '~r~Paiement effectuée', '~w~Votre commande est en cours de traitement ...', 'CHAR_LESTER_DEATHWISH')
                    Citizen.Wait(20000)
                    local playerPed = PlayerPedId()
                    TriggerServerEvent('schoolparfum:Buypacorabanne')
                end
            end)

            RageUI.Button("Azzaro Wanted", nil, {RightLabel = "~g~Commander"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    ESX.ShowAdvancedNotification('~w~SprayNet', '~r~Paiement effectuée', '~w~Votre commande est en cours de traitement ...', 'CHAR_LESTER_DEATHWISH')
                    Citizen.Wait(20000)
                    local playerPed = PlayerPedId()
                    TriggerServerEvent('schoolparfum:Buyazzarowanted')
                end
            end)

            RageUI.Button("Chanel Bleu De Chanel", nil, {RightLabel = "~g~Commander"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    ESX.ShowAdvancedNotification('~w~SprayNet', '~r~Paiement effectuée', '~w~Votre commande est en cours de traitement ...', 'CHAR_LESTER_DEATHWISH')
                    Citizen.Wait(20000)
                    local playerPed = PlayerPedId()
                    TriggerServerEvent('schoolparfum:Buybleuchanel')
                end
            end)


        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('parfum', 'femme'), true, false, true, function()
        
            RageUI.Button("Valentino Donna Born In Roma", nil, {RightLabel = "~g~Commander"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    ESX.ShowAdvancedNotification('~w~SprayNet', '~r~Paiement effectuée', '~w~Votre commande est en cours de traitement ...', 'CHAR_LESTER_DEATHWISH')
                    Citizen.Wait(20000)
                    local playerPed = PlayerPedId()
                    TriggerServerEvent('schoolparfum:Buyvalentino')
                end
            end)

            RageUI.Button("Giorgio Armani Si", nil, {RightLabel = "~g~Commander"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    ESX.ShowAdvancedNotification('~w~SprayNet', '~r~Paiement effectuée', '~w~Votre commande est en cours de traitement ...', 'CHAR_LESTER_DEATHWISH')
                    Citizen.Wait(20000)
                    local playerPed = PlayerPedId()
                    TriggerServerEvent('schoolparfum:Buygiorgioarmani')
                end
            end)

            RageUI.Button("Paco Rabanne Lady Million", nil, {RightLabel = "~g~Commander"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    ESX.ShowAdvancedNotification('~w~SprayNet', '~r~Paiement effectuée', '~w~Votre commande est en cours de traitement ...', 'CHAR_LESTER_DEATHWISH')
                    Citizen.Wait(20000)
                    local playerPed = PlayerPedId()
                    TriggerServerEvent('schoolparfum:Buyladymillion')
                end
            end)

            RageUI.Button("Chanel N°5", nil, {RightLabel = "~g~Commander"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    ESX.ShowAdvancedNotification('~w~SprayNet', '~r~Paiement effectuée', '~w~Votre commande est en cours de traitement ...', 'CHAR_LESTER_DEATHWISH')
                    Citizen.Wait(20000)
                    local playerPed = PlayerPedId()
                    TriggerServerEvent('schoolparfum:Buychanel')
                end
            end)
            
           
        end, function()
        end)

        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 0.4 then
                RageUI.Text({
                    message = "[~b~E~w~] pour regarder le catalogue",
                    time_display = 1
                })
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('parfum', 'main'), not RageUI.Visible(RMenu:Get('parfum', 'main')))
                end   
            end
        end
    end
end)

RegisterNetEvent('schoolparfum:chanel')
AddEventHandler('schoolparfum:chanel', function(prop_name)
	if not IsAnimated then
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('clothingtie', function()
				TaskPlayAnim(playerPed, 'clothingtie', 'try_tie_neutral_a', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('schoolparfum:diorsauvage')
AddEventHandler('schoolparfum:diorsauvage', function(prop_name)
	if not IsAnimated then
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('clothingtie', function()
				TaskPlayAnim(playerPed, 'clothingtie', 'try_tie_neutral_a', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('schoolparfum:pacorabanne')
AddEventHandler('schoolparfum:pacorabanne', function(prop_name)
	if not IsAnimated then
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('clothingtie', function()
				TaskPlayAnim(playerPed, 'clothingtie', 'try_tie_neutral_a', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('schoolparfum:azzarowanted')
AddEventHandler('schoolparfum:azzarowanted', function(prop_name)
	if not IsAnimated then
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('clothingtie', function()
				TaskPlayAnim(playerPed, 'clothingtie', 'try_tie_neutral_a', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('schoolparfum:bleuchanel')
AddEventHandler('schoolparfum:bleuchanel', function(prop_name)
	if not IsAnimated then
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('clothingtie', function()
				TaskPlayAnim(playerPed, 'clothingtie', 'try_tie_neutral_a', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('schoolparfum:giorgioarmani')
AddEventHandler('schoolparfum:giorgioarmani', function(prop_name)
	if not IsAnimated then
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('clothingtie', function()
				TaskPlayAnim(playerPed, 'clothingtie', 'try_tie_neutral_a', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('schoolparfum:valentino')
AddEventHandler('schoolparfum:valentino', function(prop_name)
	if not IsAnimated then
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('clothingtie', function()
				TaskPlayAnim(playerPed, 'clothingtie', 'try_tie_neutral_a', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('schoolparfum:ladymillion')
AddEventHandler('schoolparfum:ladymillion', function(prop_name)
	if not IsAnimated then
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('clothingtie', function()
				TaskPlayAnim(playerPed, 'clothingtie', 'try_tie_neutral_a', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        DrawMarker(25, -1535.75, 97.77, 55.78, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 255, 255, 170, 0, 1, 2, 0, nil, nil, 0)

    end
end)
