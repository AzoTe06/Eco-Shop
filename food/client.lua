local options = {
    x = 0.9,
    y = 0.2,
    width = 0.2,
    height = 0.04,
    scale = 0.4,
    font = 0,
    menu_title = "Magasin",
    menu_subtitle = "Categories",
    color_r = 30,
    color_g = 144,
    color_b = 255,
}

RegisterNetEvent("mp:firstspawn")
AddEventHandler("mp:firstspawn",function()
	Main() -- Menu to draw
    Menu.hidden = not Menu.hidden -- Hide/Show the menu
    Menu.renderGUI(options) -- Draw menu on each tick if Menu.hidden = false
end)

function changemodel(model)
	
	local modelhashed = GetHashKey(model)

	RequestModel(modelhashed)
	while not HasModelLoaded(modelhashed) do 
	    RequestModel(modelhashed)
	    Citizen.Wait(0)
	end

	SetPlayerModel(PlayerId(), modelhashed)
	local a = "" -- nil doesnt work
	SetPedRandomComponentVariation(GetPlayerPed(-1), true)
	SetModelAsNoLongerNeeded(modelhashed)
end

function Notify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function Main()
    options.menu_subtitle = "Ingredient du magasin"
    ClearMenu()
    Menu.addButton("Eau 15€", "eau", nil)
    Menu.addButton("Sandwich 25€", "Sandwich", nil) 
    Menu.addButton("Cigarette 50€", "Cigarette", nil)       
    Menu.addButton("Bouteille d'alcool 85€", "Alcool", nil)
end

------------------------------
--FONCTIONS
-------------------------------
local twentyfourseven_shops = {
	{ ['x'] = 1961.1140136719, ['y'] = 3741.4494628906, ['z'] = 32.34375 },
	{ ['x'] = 1392.4129638672, ['y'] = 3604.47265625, ['z'] = 34.980926513672 },
	{ ['x'] = 546.98962402344, ['y'] = 2670.3176269531, ['z'] = 42.156539916992 },
	{ ['x'] = 2556.2534179688, ['y'] = 382.876953125, ['z'] = 108.62294769287 },
	{ ['x'] = -1821.9542236328, ['y'] = 792.40191650391, ['z'] = 138.13920593262 },
	{ ['x'] = -1223.6690673828, ['y'] = -906.67517089844, ['z'] = 12.326356887817 },
	{ ['x'] = -708.19256591797, ['y'] = -914.65264892578, ['z'] = 19.215591430664 },
	{ ['x'] = 26.419162750244, ['y'] = -1347.5804443359, ['z'] = 29.497024536133 },
}

Citizen.CreateThread(function()
	for k,v in ipairs(twentyfourseven_shops)do
		local blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite(blip, 52)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Magasin")
		EndTextCommandSetBlipName(blip)
	end
end)

RegisterNetEvent("GPS")
AddEventHandler("GPS", function()
    TriggerEvent("player:receiveItem", 99, 1)
	Menu.hidden = false  
end)

function GPS()
    TriggerServerEvent("GPSs")
	Menu.hidden = false
end


RegisterNetEvent("Sandwich")
AddEventHandler("Sandwich", function()
    TriggerEvent("player:receiveItem", 30, 1)
	Menu.hidden = false  
end)

function Sandwich()
    TriggerServerEvent("Sandwichs")
	Menu.hidden = false
end

RegisterNetEvent("eau")
AddEventHandler("eau", function()
    TriggerEvent("player:receiveItem", 6, 1)
	Menu.hidden = false  
end)

function eau()
    TriggerServerEvent("eaus")
	Menu.hidden = false
end

RegisterNetEvent("Joint")
AddEventHandler("Joint", function()
    TriggerEvent("player:receiveItem", 64, 1)
	Menu.hidden = false  
end)

function Joint()
    TriggerServerEvent("Joints")
	Menu.hidden = false
end


RegisterNetEvent("Cigarette")
AddEventHandler("Cigarette", function()
    TriggerEvent("player:receiveItem", 97, 1)
	Menu.hidden = false  
end)

function Cigarette()
    TriggerServerEvent("Cigarettes")
	Menu.hidden = false
end

RegisterNetEvent("Alcool")
AddEventHandler("Alcool", function()
    TriggerEvent("player:receiveItem", 95, 1)
	Menu.hidden = false  
end)

function Alcool()
    TriggerServerEvent("Alcools")
	Menu.hidden = false
end

-------------------------
---INVENTAIRE
-------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Press F2 to open menu
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local pos = GetEntityCoords(GetPlayerPed(-1), false)
		for k,v in ipairs(twentyfourseven_shops) do
			if(Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 20.0)then
				if(Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 2.0)then
					DisplayHelpText("~h~~b~Appuyer sur ~INPUT_PICKUP~ pour ouvrir le menu.")
					if IsControlJustPressed(1, 38) then
                        Main()
                        Menu.hidden = not Menu.hidden
				    end
                  Menu.renderGUI(options)
                end
            end
		end
	end
end)
