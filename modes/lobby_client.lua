function Lobby_onClientMapStopping(mapinfo)
	if (mapinfo.modename ~= "lobby") then return end
	removeCommandHandler("car",onClientVehicleChoose)
	removeCommandHandler("gun",onClientWeaponShow)
end
function Lobby_onClientMapStarting(mapinfo)
	if (mapinfo.modename ~= "lobby") then return end
	showPlayerHudComponent("ammo",true)
	showPlayerHudComponent("area_name",false)
	showPlayerHudComponent("armour",true)
	showPlayerHudComponent("breath",true)
	showPlayerHudComponent("clock",true)
	showPlayerHudComponent("health",true)
	showPlayerHudComponent("money",false)
	showPlayerHudComponent("radar",true)
	showPlayerHudComponent("vehicle_name",false)
	showPlayerHudComponent("weapon",true)
	if (getTacticsData("modes","lobby","car") == "true") then
		addCommandHandler("car",onClientVehicleChoose,false)
	end
	if (getTacticsData("modes","lobby","gun") == "true") then
		addCommandHandler("gun",onClientWeaponShow,false)
	end
end
addEventHandler("onClientMapStarting",root,Lobby_onClientMapStarting)
addEventHandler("onClientMapStopping",root,Lobby_onClientMapStopping)
