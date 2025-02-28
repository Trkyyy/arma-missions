_sectionLoadout = ["rifleman", "rifleman","rifleman","rifleman","marksman", "marksman", "machinegunner", "gren"];
_spawnLocations = [[7903.97,9574.5,0], [7771.23,9618.19,0], [7770.12,9668.17,0], [9032.93,8565.21,0], [8958.52,8658.79,0], [8861.88,8697.56,0], [7904.21,8823.1,0]];
_vehicleSpawns = [[8259.99,11158,0], [8314.49,11253.9,0]];
_attackPos = [7498.41,7700.6,0];


{
	_group = createGroup east;
	_pos = _x;
	
	{
		_unit = _group createUnit ["CUP_O_INS_Crew", _pos, [], 0, "FORM"];
		_loadoutFile = format ["loadouts/%1.sqf", _x];
		[_unit] execVM _loadoutFile;
	} forEach _sectionLoadout;

	_group setFormation "STAG COLUMN";
	_group setBehaviour "COMBAT";
	_group setCombatMode "RED";
	
	_waypoint = _group addWaypoint [_attackPos, 0];
	_waypoint setWaypointType "SAD"; 
	_waypoint setWaypointSpeed "NORMAL";
	_waypoint setWaypointFormation "STAG COLUMN";
} forEach _spawnLocations;
