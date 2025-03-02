// functions\fn_addIntelAction.sqf

params ["_object"]; // Accept the object as a parameter





// Add the action to the object
_object addAction [
    "Gather Intel", // Title of the action
    {
		["intelTask", "Succeeded"] call BIS_fnc_taskSetState;
	}
];