private _boatGroup = objNull;

{
    if (groupID _x == "boatGroup") exitWith { 
        _boatGroup = _x; 
    };
} forEach allGroups;

if (!isNull _boatGroup) then {
    deleteWaypoint [_boatGroup, 1];
} else {
    hint "Boat group not found!";
};