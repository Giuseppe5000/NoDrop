function MyOnPlayerTossingItem(Player)
	if (Player:HasPermission("core.ban")) then
		return false
	else
		return true
	end
end

function MyOnKilling(Victim)
	if (Victim:IsPlayer()) then
		Victim:GetInventory():Clear()
	end
	
	return false
end
