removeFromRemainsCollector [
	body01,
	body02,
	body03,
	body04,
	body05,
	body06,
	body07,
	body08,
	body09,
	body10,
	body11,
	body12,
	body13,
	body14,
	body15,
	body_enemy_001,
	body_enemy_002,
	body_enemy_003,
	body_enemy_004,
	body_enemy_005,
	body_enemy_006,
	body_enemy_007,
	body_enemy_008,
	body_enemy_009,
	body_enemy_010,
	body_enemy_011,
	body_enemy_012,
	body_enemy_013,
	body_enemy_014,
	body_enemy_015,
	wreck_001,
	wreck_002,
	wreck_003,
	wreck_004,
	wreck_005,
	wreck_006,
	wreck_007,
	wreck_008,
	HVT
];

{
    [
        _x,                                            // object the action is attached to
        "Save Loadout",                                        // Title of the action
        "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",    // Idle icon shown on screen
        "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",    // Progress icon shown on screen
        "_this distance _target < 5",                        // Condition for the action to be shown
        "_caller distance _target < 5",                        // Condition for the action to progress
        {},                                                    // Code executed when action starts
        {},                                                    // Code executed on every progress tick
        { params ["_target", "_caller", "_actionId", "_arguments"]; [] call reapercrew_player_management_fnc_setUnitInsigniaLocal; _loadout = [player] call acre_api_fnc_filterUnitLoadout; player setVariable["Saved_Loadout", _loadout]; },                // Code executed on completion
        {},                                                    // Code executed on interrupted
        [],                                                    // Arguments passed to the scripts as _this select 3
        5,                                                    // action duration in seconds
        0,                                                    // priority
        false,                                                // Remove on completion
        false                                                // Show in unconscious state
    ] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
} forEach [laptop];