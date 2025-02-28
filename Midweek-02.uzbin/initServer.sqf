//removeFromRemainsCollector [];

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
} forEach [laptop, laptop_1];