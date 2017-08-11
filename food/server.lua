require "resources/essentialmode/lib/MySQL"
MySQL:open("127.0.0.1", "gta5_gamemode_essential", "root", "1202")

RegisterServerEvent("eaus")
AddEventHandler("eaus", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 15) then
		target:removeMoney(15)
		TriggerClientEvent("eau", source)
		else
		TriggerClientEvent("nomoney", source)
		end
	end)
end)

RegisterServerEvent("Sandwichs")
AddEventHandler("Sandwichs", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 25) then
		target:removeMoney(25)
		TriggerClientEvent("Sandwich", source)
		else
		TriggerClientEvent("nomoney", source)
		end
	end)
end)

RegisterServerEvent("Joints")
AddEventHandler("Joints", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 78) then
		target:removeMoney(78)
		TriggerClientEvent("Joint", source)
		else
		TriggerClientEvent("nomoney", source)
		end
	end)
end)

RegisterServerEvent("Cigarettes")
AddEventHandler("Cigarettes", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 50) then
		target:removeMoney(50)
		TriggerClientEvent("Cigarette", source)
		else
		TriggerClientEvent("nomoney", source)
		end
	end)
end)

RegisterServerEvent("Alcools")
AddEventHandler("Alcools", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 85) then
		target:removeMoney(85)
		TriggerClientEvent("Alcool", source)
		else
		TriggerClientEvent("nomoney", source)
		end
	end)
end)
