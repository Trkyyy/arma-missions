// _players = [p1, p2, p3];
// _targets = [ambushTarget_01, ambushTarget_02, ambushTarget_03, ambushTarget_04, ambushTarget_05];
// _opforDudes = units ambush1 + units ambush2;

{
	// _x setBehaviourStrong "COMBAT";
	_x setCombatMode "RED";
	_x setUnitPos "UP";
} forEach units ambush1;


ambush3 setBehaviourStrong "COMBAT";
ambush4 setBehaviourStrong "COMBAT";
ambush5 setBehaviourStrong "COMBAT";
	
