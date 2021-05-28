Citizen.CreateThread(function()
	while true do
		if IsPedInAnyVehicle(GetPlayerPed(-1)) then
			local canshoot = false
			local kmhSpeed = GetEntitySpeed(GetVehiclePedIsUsing(PlayerPedId(-1))) * 3.6;

			if kmhSpeed < sc0tt_lucky_driveby.kmh then
				canshoot = true
			else
				canshoot = false
			end
			SetPlayerCanDoDriveBy(sc0tt_lucky_driveby.player, canshoot)
		end
		Citizen.Wait(0);
	end
end)

SetPlayerCanDoDriveBy(sc0tt_lucky_driveby.player, false)
