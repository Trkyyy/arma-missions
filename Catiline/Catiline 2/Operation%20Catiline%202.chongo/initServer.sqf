removeFromRemainsCollector [];

// correcting my poor ai loadout making
{
    // Check if the unit's description matches "Rifleman"
    if (typeOf _x == "CUP_O_INS_Crew") then {
        for "_i" from 1 to 4 do {_x addItemToBackpack "CUP_20Rnd_762x51_FNFAL_M";};
    };
} forEach allUnits;

addMissionEventHandler ["EntityCreated", {
    params ["_entity"];

    switch (typeOf _entity) do
    {
        case "O_Soldier_SL_F": {
            [_entity] execVM "loadouts\rifleman.sqf";
        };
        case "O_Soldier_F": {
            [_entity] execVM "loadouts\rifleman.sqf";
        };
        case "O_Soldier_LAT_F": {
            [_entity] execVM "loadouts\rifleman.sqf";
        };
        case "O_soldier_M_F": {
            [_entity] execVM "loadouts\rifleman.sqf";
        };
        case "O_Soldier_TL_F": {
            [_entity] execVM "loadouts\machinegunner.sqf";
        };
        case "O_Soldier_AR_F": {
            [_entity] execVM "loadouts\machinegunner.sqf";
        };
        case "O_Soldier_A_F": {
            [_entity] execVM "loadouts\gren.sqf";
        };
        case "O_medic_F": {
            [_entity] execVM "loadouts\marksman.sqf";
        };
    };
}];
