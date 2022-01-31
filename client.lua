Citizen.CreateThread(function()
	while true do
		if IsPedInAnyVehicle(GetPlayerPed(-1)) then
			local canshoot = false
			local kmhSpeed = GetEntitySpeed(GetVehiclePedIsUsing(PlayerPedId(-1))) * 3.6;

			if kmhSpeed < Config.kmh then
				canshoot = true
			else
				canshoot = false
			end
			SetPlayerCanDoDriveBy(Config.player, canshoot)
		end
		Citizen.Wait(0);
	end
end)

SetPlayerCanDoDriveBy(Config.player, false)
