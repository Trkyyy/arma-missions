// _facewear = ["LDF_Rebirth_g_balaclava", "rhs_Balaclava1_olive", "rhs_scarf", "G_Bandanna_oli", "G_Balaclava_oli"];
removeGoggles player;
// if (player getVariable["noFaceMask", false]) then {
// 	//	do nothing
// } else {
// 	if (player getVariable["isLogiCommand", false]) then {
// 		player addGoggles ("rhs_facewear_6m2_1");
// 	} else {
// 		player addGoggles (selectRandom _facewear);
// 	};
// };

// Save Loadout
_loadout = [player] call acre_api_fnc_filterUnitLoadout;
[] call reapercrew_player_management_fnc_setUnitInsigniaLocal;
player setVariable["Saved_Loadout", _loadout];

[] spawn {	
	sleep 30;
	setTerrainGrid 3.125;
};

// briefing setup
// player createDiaryRecord ["Diary", ["Background of conflict",[] call SB_fnc_diaryBackground]];
// player createDiaryRecord ["Diary", ["Signals",[] call SB_fnc_diarySignals]];
// player createDiaryRecord ["Diary", ["Execution",[] call SB_fnc_diaryExecution]];
// player createDiaryRecord ["Diary", ["Mission",[] call SB_fnc_diaryMission]];
// player createDiaryRecord ["Diary", ["Situation",[] call SB_fnc_diarySituation]];

