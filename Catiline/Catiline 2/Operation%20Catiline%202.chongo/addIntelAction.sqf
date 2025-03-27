params ["_object"]; 

_object addAction [
    "Gather Intel", 
    {
		["intelTask2", "Succeeded"] call BIS_fnc_taskSetState;

		_taskID = "taskRescueDag";
		_taskTitle = "Rescue Dag Hammarskjöld";
		_taskDesc = "Captured intel reveals that Dag Hammarskjöld (UN Secretary-General who was pressumed dead when his plane was shot down) is being held in the hills to the north of the operational area. Rescue him.";
		_taskMarker = "rescueDagMarker";
		_taskPosition = [2182.16, 10723.4, 3.513];

		[true, [_taskID], [_taskDesc, _taskTitle, _taskMarker], _taskPosition, "CREATED", 1, true, "meet"] call BIS_fnc_taskCreate;

	}
];

params ["_object"]; 

this addAction [ 
    "Gather Intel", 
    {
		["intelTask", "Succeeded"] call BIS_fnc_taskSetState;

		_taskID = "hostageTask";
		_taskTitle = "Rescue Civilians";
		_taskDesc = "Captured intel reveals that civilians are being held in the town of Akomo. Rescue them.";
		_taskMarker = "rescueDagMarker";
		_taskPosition = [364.116,8257.19,0];

		[true, [_taskID], [_taskDesc, _taskTitle, _taskMarker], _taskPosition, "CREATED", 1, true, "meet"] call BIS_fnc_taskCreate;

	}
];
