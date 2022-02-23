
function Initialize(Plugin)
	Plugin:SetName(g_PluginInfo.Name)
	Plugin:SetVersion(g_PluginInfo.Version)

	-- Hooks
	PLUGIN = Plugin
	cPluginManager:AddHook(cPluginManager.HOOK_PLAYER_TOSSING_ITEM, MyOnPlayerTossingItem);
	cPluginManager:AddHook(cPluginManager.HOOK_KILLING, MyOnKilling);
	cPluginManager:AddHook(cPluginManager.HOOK_ENTITY_CHANGED_WORLD, MyOnEntityChangedWorld);


	dofile(cPluginManager:GetPluginsPath() .. "/InfoReg.lua")
    	RegisterPluginInfoCommands()

	LOG("Initialised version " .. Plugin:GetVersion())
	return true
end


function OnDisable()
	LOG("NoDrop Has Been Disabled :(")
end
