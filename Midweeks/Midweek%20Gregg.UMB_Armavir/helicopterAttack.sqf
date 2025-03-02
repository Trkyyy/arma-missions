[[8719, 2071, 100], "CUP_O_UH1H_SLA", 10000, [10505, 4730, 50]] call reapercrew_reinforcements_fnc_spawnHeadlessVehicle;
[[8619, 2071, 100], "CUP_O_UH1H_SLA", 10000, [10505, 4730, 50]] call reapercrew_reinforcements_fnc_spawnHeadlessVehicle;
[[11657, 2284, 50], "CUP_O_UH1H_SLA", 10000, [11185, 4337, 50]] call reapercrew_reinforcements_fnc_spawnHeadlessVehicle;
[[11757, 2284, 50], "CUP_O_UH1H_SLA", 10000, [11285, 4337, 50]] call reapercrew_reinforcements_fnc_spawnHeadlessVehicle;

sleep 30;
_spawnedVehicle = [[-6873,-10535, 100], 0, "B_Plane_Fighter_01_F", west] call BIS_fnc_spawnVehicle;
_spawnedGroup = _spawnedVehicle select 2;

{
    _x triggerDynamicSimulation false;
    _x setSkill (100);
} forEach units _spawnedGroup;

// Give the unit a SAD waypoint
sleep 5;
_spawnedGroup setBehaviour "AWARE";
_waypoint = _spawnedGroup addWaypoint [[11900, 3189, 50], 0];
_waypoint setWaypointSpeed "NORMAL";
_waypoint setWaypointType "SAD";
_waypoint setWaypointBehaviour "SAFE";




// _heliGroup = createGroup east;

// {
//     private _heli = createVehicle ["CUP_O_Mi8_CHDKZ", _x, [], 0, "FLY"];
//     _heli setPosATL _x;
//     _heli setBehaviour "COMBAT";
//     _heli setCombatMode "RED";
//     _heli flyInHeight (_x select 2);
//     _heli allowDamage true;
    
//     // Give crew
//     createVehicleCrew _heli;
    
//     _heliGroup addVehicle _heli;
// } forEach [[6550, 2524, 50], [11757, 2284, 50]];

// // Give the unit a waypoint to move to the target position
// _wp = _heliGroup addWaypoint [[10505, 4730, 50], 0];
// _wp setWaypointType "SAD";
// _wp setWaypointSpeed "FULL";
// _wp setWaypointCompletionRadius 10;
// _wp setWaypointBehaviour "COMBAT";
// _wp setWaypointCombatMode "RED";

// _heliGroup setCurrentWaypoint _wp;