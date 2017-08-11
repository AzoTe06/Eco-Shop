require "resources/essentialmode/lib/MySQL"
MySQL:open("127.0.0.1", "gta5_gamemode_essential", "root", "1202")

RegisterServerEvent("eaus")
AddEventHandler("eaus", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 15) then
		TriggerClientEvent("eau", source)
		target:removeMoney(15)
		TriggerClientEvent("project:notify", source, "~h~~s~+1 ~h~~b~Eau", 1, "Magasin", false, "Eau ~g~+1 !\n")
		else
		TriggerClientEvent("project:notify", source, "~h~~r~Tu n'as pas suffisamment d'argent", 1, "Magasin", false, "~r~Tu n'as pas suffisamment d'argent !\n")
		end
	end)
end)

RegisterServerEvent("Sandwichs")
AddEventHandler("Sandwichs", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 25) then
		TriggerClientEvent("Sandwich", source)
		target:removeMoney(25)
		TriggerClientEvent("project:notify", source, "~h~~s~+1 ~h~~g~Sandwich", 1, "Magasin", false, "Sandwich ~g~+1 !\n")
		else
		TriggerClientEvent("project:notify", source, "~h~~r~Tu n'as pas suffisamment d'argent", 1, "Magasin", false, "~r~Tu n'as pas suffisamment d'argent !\n")
		end
	end)
end)

RegisterServerEvent("Joints")
AddEventHandler("Joints", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 78) then
		TriggerClientEvent("Joint", source)
		target:removeMoney(78)
		TriggerClientEvent("project:notify", source, "~h~~r~Attention le joint est très dangereux pour la santé ! ~s~+1 ~h~~o~Joint", 1, "Magasin", false, "Sandwich ~g~+1 !\n")
		else
		TriggerClientEvent("project:notify", source, "~h~~r~Tu n'as pas suffisamment d'argent", 1, "Magasin", false, "~r~Tu n'as pas suffisamment d'argent !\n")
		end
	end)
end)

RegisterServerEvent("Cigarettes")
AddEventHandler("Cigarettes", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 50) then
		TriggerClientEvent("Cigarette", source)
		target:removeMoney(50)
		TriggerClientEvent("project:notify", source, "~h~~r~Attention Fumer Tue !! ~s~+1 ~h~~o~Cigarette", 1, "Magasin", false, "Sandwich ~g~+1 !\n")
		else
		TriggerClientEvent("project:notify", source, "~h~~r~Tu n'as pas suffisamment d'argent", 1, "Magasin", false, "~r~Tu n'as pas suffisamment d'argent !\n")
		end
	end)
end)

RegisterServerEvent("Alcools")
AddEventHandler("Alcools", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 85) then
		TriggerClientEvent("Alcool", source)
		target:removeMoney(85)
		TriggerClientEvent("project:notify", source, "~h~~r~L'abus d'alcool est dangereux pour la santé, consommez avec modération ~s~+1 ~h~~o~Bouteille d'alcool", 1, "Magasin", false, "Sandwich ~g~+1 !\n")
		else
		TriggerClientEvent("project:notify", source, "~h~~r~Tu n'as pas suffisamment d'argent", 1, "Magasin", false, "~r~Tu n'as pas suffisamment d'argent !\n")
		end
	end)
end)