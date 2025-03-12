_units = ["lif1", "lif2", "lif3", "lif4", "lif5", "lif6"];
_destinations = [getMarkerPos "marker_20", getMarkerPos "marker_21", getMarkerPos "marker_22", getMarkerPos "marker_23", getMarkerPos "marker_24", getMarkerPos "marker_25"];

sleep 400;

{
	_unitName = _units select _forEachIndex;
	//systemChat format ["%1 index is %2", _forEachIndex, _unitName];
	_unit = {
		if (groupID _x == _unitName) exitWith { _x };
		objNull
	} forEach allGroups;

	// Exit if no group was found
	if (isNull _unit) exitWith {
		[] // Return an empty array
	};

    _destination = _x;
    _unit move _destination;
    //systemChat format ["%1 is moving to %2", _unit, _destination];
} forEach _destinations;