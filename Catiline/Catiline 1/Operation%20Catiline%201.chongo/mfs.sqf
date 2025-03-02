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
s

private _mortarUnits = units _mortarGroup; // Get all units in the Mortar1 group
private _pos1 = [5619, 4623, 0];  
private _pos2 = [4335.8,4862.1,0];  

// Function to fire rounds at a position with variation
private _fireMortar = {
    params ["_mortars", "_targetPos"];
    
    {
		
        private _mortar = _x;
        for "_i" from 1 to 6 do {
            private _randomOffset = [
                (_targetPos select 0) + (random 40 - 10),
                (_targetPos select 1) + (random 40 - 10),
                _targetPos select 2
            ];
            _mortar doArtilleryFire [_randomOffset, "8Rnd_82mm_Mo_shells", 1];
            sleep 3; 
        };
    } forEach _mortars;
};

sleep 2;

// Fire at first position
[_mortarUnits, _pos1] call _fireMortar;

// Wait 60 seconds
sleep 60;

// Fire at second position
[_mortarUnits, _pos2] call _fireMortar;
