// Define the helicopter type and starting position
private _heliType = "CUP_C_C47_CIV"; //"CUP_I_MI6T_UN"
private _heliStartPos = [6513, 12000, 100]; // NE corner, 300m altitude 
private _heliDestination = [3000, 2500, 100]; // SE target area
private _attackPoint = [5613, 10000, 100]; // SE target area

// Spawn the helicopter
private _heli = createVehicle [_heliType, _heliStartPos, [], 0, "FLY"];
_heli setDir 180; // Point roughly SE
_heli setVelocity [200,-100,0];
_heli flyInHeight 200; // Maintain altitude
_heli setDamage 0.8;

// Create a pilot for the helicopter
private _heliCrew = createVehicleCrew _heli;
_heli addRating -10000;

// Give the helicopter a waypoint to fly to
private _wp = _heliCrew addWaypoint [_heliDestination, 0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "FULL";
_wp setWaypointBehaviour "SAFE";

// Wait for the helicopter to reach the attack zone
waitUntil { (_heli distance2D _attackPoint) < 500 || !alive _heli };

// If the helicopter is already destroyed, exit
if !(alive _heli) exitWith {};

// Define the attacker plane type and spawn position
private _planeType = "sab_fl_yak3";
private _planeStartPos = [5913, 11000, 500]; // Spawn a bit ahead of the heli at 500m altitude


// The below is terrible, I know

// Spawn the attacking plane
private _plane = createVehicle [_planeType, _heliStartPos, [], 0, "FLY"];
private _planePilot = createVehicleCrew _plane;

private _planeStartPos2 = [5960, 11000, 500]; // Spawn a bit ahead of the heli at 500m altitude
// Spawn the attacking plane
_heliStartPos set [0, _heliStartPos select 0 + 50];
// private _plane2 = createVehicle [_planeType, _planeStartPos2, [], 0, "FLY"];
// // Create a pilot for the plane
// private _planePilot2 = createVehicleCrew _plane2;

_plane setDir 180; // Point roughly SE
_plane setVelocity [150,-75,0];
// _plane2 setDir 180; // Point roughly SE
// _plane2 setVelocity [150,-75,0];

// Order the plane to attack the helicopter
private _wpAttack = _planePilot addWaypoint [[5913, 10500, 100], 0];
_wpAttack setWaypointType "DESTROY"; // Seek and destroy
_wpAttack setWaypointCombatMode "RED"; // Engage at will
_wpAttack setWaypointSpeed "FULL";

// Order the plane to attack the helicopter
// private _wpAttack2 = _planePilot2 addWaypoint [[5913, 10500, 100], 0];
// _wpAttack2 setWaypointType "DESTROY"; // Seek and destroy
// _wpAttack2 setWaypointCombatMode "RED"; // Engage at will
// _wpAttack2 setWaypointSpeed "FULL";

sleep 8;
while {alive _plane && alive _heli} do {
    if (alive _plane) then {
        _wpAttack setWaypointPosition [getPos _heli, 0];
    };

    // if (alive _plane2) then {
    //     _wpAttack2 setWaypointPosition [getPos _heli, 0];
    // };
    sleep 8; // Adjust the delay as needed
};
