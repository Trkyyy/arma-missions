removeGoggles player;
// if (player getVariable["desertMask", false]) then {
// 	player addGoggles ("CUP_G_RUS_Ratnik_Balaclava_Desert_1");
// } else if(player getVariable["brownMask", false]) then{
// 	player addGoggles ("CUP_G_RUS_Ratnik_Balaclava_Desert_3");
// } else if(player getVariable["winterMask", false]) then{
// 	player addGoggles ("CUP_G_RUS_Ratnik_Balaclava_Winter_2");
// } else {
// 	// do nothing
// };

// Save Loadout
_loadout = [player] call acre_api_fnc_filterUnitLoadout;
[] call reapercrew_player_management_fnc_setUnitInsigniaLocal;
player setVariable["Saved_Loadout", _loadout];

[] spawn {	
	sleep 30;
	setTerrainGrid 3.125;
};


