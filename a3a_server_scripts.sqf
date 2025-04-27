CrititalLosesWest = 7; // потери для синих
CrititalLosesEast = 9; // потери для красных

missionNamespace setVariable ["a3a_endMissionTime", 6000, true]; // 6000 - время в секундах

missionNamespace setVariable ["water1", 0, true];
missionNamespace setVariable ["water2", 0, true];

[] spawn {
	waitUntil {sleep 10; a3a_var_started};
	while {isNil "srv_triggerFinished"} do {
	sleep 10;
		
		if ((east countside playableUnits) < CrititalLosesEast) then {
			srv_triggerFinished = true;
			["Боснийцы понесли большие потери! Победа обороны", west] call a3a_fnc_endMission; // Победа WEST
		};
		
		if ((west countside playableUnits) < CrititalLosesWest) then {
			srv_triggerFinished = true;
			["Итальянцы понесли большие потери! Победа атаки", east] call a3a_fnc_endMission; // Победа EAST
		};
		
		if (mkk_platform_missionTime >= a3a_endMissionTime) then { 
			srv_triggerFinished = true;
			["SFOR успели перебросить дополнительные силы", west] call a3a_fnc_endMission; // Победа по окончанию таймера
		};

		if ((water1 == 2) && (water2 == 2)) then {
			srv_triggerFinished = true;
			["outro_BSN.sqf"] remoteexec ["execvm", -2];
			sleep 15;
			["Боснийцы уничтожили водонапорные вышки! Победа Атаки!", east] call a3a_fnc_endMission;
		};
    };
};