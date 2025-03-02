removeFromRemainsCollector [];

// correcting my poor ai loadout making
{
    // Check if the unit's description matches "Rifleman"
    if (typeOf _x == "CUP_O_INS_Crew") then {
        for "_i" from 1 to 4 do {_x addItemToBackpack "CUP_20Rnd_762x51_FNFAL_M";};
    };
} forEach allUnits;