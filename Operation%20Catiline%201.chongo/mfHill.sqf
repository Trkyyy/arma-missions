// Find the group with the callsign 'Mortar1' on the OPFOR side
_mortarGroup = {
    if (groupID _x == "Mortar1") exitWith { _x };
    objNull
} forEach allGroups;

// Exit if no group was found
if (isNull _mortarGroup) exitWith {
    hint "No group with callsign 'Mortar1' found on OPFOR side.";
    [] // Return an empty array
};

private _mortarUnits = units _mortarGroup; // Get all units in the Mortar1 group
private _pos1 = [5620, 4621, 0];  

// Function to fire rounds at a position with variation
private _fireMortar = {
    params ["_mortars", "_targetPos"];
    
    {
		
        private _mortar = _x;
        for "_i" from 1 to 3 do {
            private _randomOffset = [
                (_targetPos select 0) + (random 35 - 5),
                (_targetPos select 1) + (random 35 - 4),
                _targetPos select 2
            ];
            _mortar doArtilleryFire [_randomOffset, "8Rnd_82mm_Mo_shells", 1];
            sleep 3; 
        };
    } forEach _mortars;
};

// Fire at first position
[_mortarUnits, _pos1] call _fireMortar;
