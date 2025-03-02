// Define the helicopter type and starting position
private _heliType = "CUP_I_MI6T_UN";
private _heliStartPos = [worldSize / 10 * 9, worldSize / 10 * 9, 300]; // NE corner, 300m altitude
private _heliDestination = [6700, 5000, 100]; // SE target area

// Spawn the helicopter
private _heli = createVehicle [_heliType, _heliStartPos, [], 0, "FLY"];
_heli setDir 135; // Point roughly SE
_heli flyInHeight 200; // Maintain altitude

// Create a pilot for the helicopter
private _heliCrew = createVehicleCrew _heli;

// Give the helicopter a waypoint to fly to
private _wp = group _heliCrew addWaypoint [_heliDestination, 0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "FULL";
_wp setWaypointBehaviour "SAFE";

// Wait for the helicopter to reach the attack zone
waitUntil { (_heli distance2D _heliDestination) < 500 || !alive _heli };

// If the helicopter is already destroyed, exit
if !(alive _heli) exitWith {};

// Define the attacker plane type and spawn position
private _planeType = "sab_fl_sbd";
private _planeStartPos = [6700, 5200, 500]; // Spawn a bit ahead of the heli at 500m altitude

// Spawn the attacking plane
private _plane = createVehicle [_planeType, _planeStartPos, [], 0, "FLY"];
_plane setDir 180; // Face south
_plane flyInHeight 400;

// Create a pilot for the plane
private _planePilot = createVehicleCrew _plane;

// Order the plane to attack the helicopter
private _wpAttack = group _planePilot addWaypoint [getPos _heli, 0];
_wpAttack setWaypointType "SAD"; // Seek and destroy
_wpAttack setWaypointCombatMode "RED"; // Engage at will
_wpAttack setWaypointSpeed "FULL";

// Monitor until the helicopter is destroyed
waitUntil { !alive _heli || !alive _plane };

// Cleanup if the plane is still alive
if (alive _plane) then {
    { deleteVehicle _x } forEach crew _plane;
    deleteVehicle _plane;
};
