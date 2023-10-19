local ox_inventory = exports.ox_inventory
for k,v in pairs(Config.Itemslist) do 
	exports(k, function(event, item, inventory, data, slot)
		local item = v.item 
		if event == 'usingItem' then
			local tint = Config.Itemslist[item].tintvalue 			
			local weapon = ox_inventory:GetCurrentWeapon(source)
			if item == 'newbserialfile' and tint == nil and weapon then 			
				weapon.metadata.serial = Config.scratchedserial
				ox_inventory:SetMetadata(source, weapon.slot, weapon.metadata)
				TriggerClientEvent('ox_lib:notify', source, {position = 'top-right', duration = 6000, title = Config.notificationtitle, description = ('The serial has been removed'), type = 'success' })
				if Config.debugprints then
					print(('modified %sx weapon in slot %s with new metadata'):format(weapon.count, weapon.slot))
					print("Player ID# ")
					print(source)
					print("Has been modified to ")
					print(json.encode(weapon.metadata))
				end
				TriggerClientEvent('ox_inventory:disarm', source, noAnim)
				if chance >= breakpoint then					
					TriggerClientEvent('ox_lib:notify', source, {position = 'top-right', duration = 6000, title = Config.notificationtitle, description = ('The file has broken!'), type = 'success' })
					return
				end
			elseif tint ~= nil and weapon then 
				weapon.metadata.tint = tint
				weapon.metadata.weapontint = Config.Itemslist[item].tintname
				ox_inventory:SetMetadata(source, weapon.slot, weapon.metadata)
				if Config.debugprints then
					print(('modified %sx weapon in slot %s with new metadata'):format(weapon.count, weapon.slot))
					print("Player ID# ")
					print(source)
					print("Has been modified to ")
					print(json.encode(weapon.metadata))
				end
				TriggerClientEvent('ox_inventory:disarm', source, noAnim)
				return
			elseif not weapon then 
				TriggerClientEvent('ox_lib:notify', source, {position = 'top-right', duration = 6000, title = Config.notificationtitle, description = ('You will need a weapon in hand to use this.'), type = 'success' })
			end
	
		end	
	end)
end
