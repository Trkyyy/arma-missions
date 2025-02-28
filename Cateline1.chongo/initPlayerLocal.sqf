// Remove facewear
removeGoggles player;

// Save Loadout
_loadout = [player] call acre_api_fnc_filterUnitLoadout;
[] call reapercrew_player_management_fnc_setUnitInsigniaLocal;
player setVariable["Saved_Loadout",getUnitLoadout player];

[] spawn {
	sleep 30;
	setTerrainGrid 3.125;
};