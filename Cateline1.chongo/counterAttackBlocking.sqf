_units = ["block1", "block2", "block3", "block4", "block5", "block6", "block7", "block8", "block9", "block10", "block11"];
_destinations = [ [ [7389.52,8514.49,0], [7409.98,8039.01,-6.86646e-05], [7432.02,7941.55,-3.8147e-05] ], [ [7197.12,8343.38,0.0001297], [7310.71,7844.97,7.62939e-06], [7374.86,7656.12,7.34592] ], [ [6996.92,8422.88,-1.52588e-05], [7190.98,7665.09,-9.91821e-05], [7288.57,7662.65,6.10352e-05] ], [ [7982.83,8504.81,0.000106812], [7668.39,8094.46,0.000289917], [7489.4,7894.47,-9.91821e-05] ], [ [8164.89,8424.78,4.57764e-05], [7983.24,8181.19,3.05176e-05], [7751.42,7970.06,0], [7503.07,7735.3,9.00003] ], [ [8435.31,7994.45,3.05176e-05], [8083.79,7985.93,-3.05176e-05], [7750.55,7708.47,0], [7562.06,7721.31,7.60869] ], [ [8163.95,7288.67,0], [7779.29,7445.05,0.000324249], [7558.09,7580.53,7.75955] ],[ [7564.65,7701.58,7.62939e-06] ], [ [7564.65,7701.58,7.62939e-06] ], [[7504.98,7909.59,3.05176e-05]], [ [8085.96,7770.7,0], [7613.83,7598.3,-7.62939e-06] ] ];

sleep 600;
{
	if (_forEachIndex >= count _units) exitWith {};

	_unitName = _units select _forEachIndex;
	_unit = missionNamespace getVariable [_unitName, objNull];

	if (!isNull _unit) then {
		{
			_unit move _x;
		} forEach _x
		// sleep 0.1; // Prevents overloading the engine
	};
} forEach _destinations;
