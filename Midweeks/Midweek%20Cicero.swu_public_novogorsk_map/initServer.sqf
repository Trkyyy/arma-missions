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
} forEach [laptop];


[] spawn {
	refreshSupplies = true;
	while { refreshSupplies } do {
		// Small Arms
		_rifleMagazines = reaperCrew_rifleMagazines splitString ",";
		_grenadierAmmo = reaperCrew_grenadierAmmo splitString ",";
		_sidearmMagazines = reaperCrew_sidearmMagazines splitString ",";
		_machinegunMagazines = reaperCrew_machinegunMagazines splitString ",";
		_marksmanMagazines = reaperCrew_MarksmanMagazines splitString ",";

		// Launchers
		_launcherAmmo = reaperCrew_LauncherAmmo splitString ",";
		_singleUseLaunchers = reaperCrew_SingleUseLaunchers splitString ",";

		// Projectiles
		_lethalGrenades = reaperCrew_lethalGrenades splitString ",";
		_nonLethalGrenades = reaperCrew_nonLethalGrenades splitString ",";
		_smokeGrenades = reaperCrew_smokeGrenades splitString ",";
		_allGrenades = _lethalGrenades + _nonLethalGrenades + _smokeGrenades;

		// Items
		_explosives = reaperCrew_explosives splitString ",";

		clearItemCargoGlobal respawn_vehicle;
		clearWeaponCargoGlobal respawn_vehicle;
		clearMagazineCargoGlobal respawn_vehicle;
		clearBackpackCargoGlobal respawn_vehicle;

		// Small Arms
		{respawn_vehicle addMagazineCargoGlobal [_x, 64];} forEach _rifleMagazines;
		{respawn_vehicle addMagazineCargoGlobal [_x, 20];} forEach _grenadierAmmo;
		{respawn_vehicle addMagazineCargoGlobal [_x, 40];} forEach _sidearmMagazines;
		{respawn_vehicle addMagazineCargoGlobal [_x, 20];} forEach _machinegunMagazines;
		{respawn_vehicle addMagazineCargoGlobal [_x, 30];} forEach _marksmanMagazines;

		// Launchers
		{respawn_vehicle addMagazineCargoGlobal [_x, 20];} forEach _launcherAmmo;
		{respawn_vehicle addWeaponCargoGlobal  [_x, 10];} forEach _singleUseLaunchers;

		// Projectiles
		{respawn_vehicle addMagazineCargoGlobal [_x, 20];} forEach _allGrenades;

		// Explosives
		{respawn_vehicle addItemCargoGlobal [_x, 10];} forEach _explosives; 


		// Medical
		respawn_vehicle addItemCargoGlobal ["ACE_bloodIV", 15];
		respawn_vehicle addItemCargoGlobal ["ACE_bloodIV_500", 12];
		respawn_vehicle addItemCargoGlobal ["ACE_bloodIV_250", 4];
		respawn_vehicle addItemCargoGlobal ["ACE_elasticBandage", 100];
		respawn_vehicle addItemCargoGlobal ["ACE_quikclot", 100];
		respawn_vehicle addItemCargoGlobal ["ACE_packingBandage", 100];
		respawn_vehicle addItemCargoGlobal ["ACE_adenosine", 20];
		respawn_vehicle addItemCargoGlobal ["ACE_epinephrine", 50];
		respawn_vehicle addItemCargoGlobal ["ACE_morphine", 20];
		respawn_vehicle addItemCargoGlobal ["ACE_tourniquet", 20];
		respawn_vehicle addItemCargoGlobal ["ACE_splint", 20];
		respawn_vehicle addItemCargoGlobal ["ACE_personalAidKit", 2];

		sleep 900;
	};
};

["destroyCity"] call BIS_fnc_destroyCity;
