ESX               = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('smerfik:nurkowanie')
AddEventHandler('smerfik:nurkowanie', function(source)
	--print('xd')
	TriggerEvent('skinchanger:getSkin', function(skin)
		if skin.mask_1 == 0 then -- sprawdzanie czy masz już maske

		local clothesSkin = {
		['glasses_1'] = 26, ['glasses_2'] = 0,
		['mask_1'] = 36, ['mask_2'] = 0 -- zaklada nam maskę (jako ubranie)
		}
		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
		ESX.ShowHelpNotification('Rebreather equipped!')

		SetPedMaxTimeUnderwater(GetPlayerPed(-1), 150.00) -- zwiększa czas który możemy spędzić pod wodą

		else

		local clothesSkin = {
		['glasses_1'] = 0, ['glasses_2'] = 0,
		['mask_1'] = 0, ['mask_2'] = 0  -- zdejmuje maske
		}
		SetPedMaxTimeUnderwater(GetPlayerPed(-1), 10.00) -- przywraca normalny czas który możemy spędzić pod wodą

	    TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
	     end
	end)

end)
