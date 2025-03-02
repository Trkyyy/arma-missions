sleep 4;
player linkItem "ItemMap";
openMap true;
1 fadeEnvironment 0;

// timeline of events 
_timeline = [ [0.0, { mapAnimAdd [1, 0.8, [6000,6000]]; mapAnimCommit; }], [5, { mapAnimAdd [2, 0.2, getMarkerPos "fobL"]; mapAnimCommit; }], [10, { mapAnimAdd [1.5, 0.4, [5147,4000]]; ["unHq", 2, 2] call BIS_fnc_blinkMarker; ["unRoadblock", 2, 2] call BIS_fnc_blinkMarker; ["unGar", 2, 2] call BIS_fnc_blinkMarker; mapAnimCommit; }], [15, { mapAnimAdd [2, 0.2, [8347,2818]]; mapAnimCommit; }], [20, { mapAnimAdd [1.5, 0.4, [8347,2818]]; mapAnimCommit; ["company"] call BIS_fnc_hideMarker; ["mortar"] call BIS_fnc_hideMarker; ["show", ["inf1", "inf2", "inf3"]] call BIS_fnc_showMarkers;}], [24, { mapAnimAdd [2, 0.3, [9000,9000,0]]; mapAnimCommit;}], [28, { mapAnimAdd [2, 0.3, [9000,9000,0]]; mapAnimCommit;}]];

[_timeline, 0] spawn BIS_fnc_animatedBriefing;