if (playerSide == east) then
{	
	[
		player, // Object
		"Заложить взрывчатку", // Title
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forceRespawn_ca.paa", 
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forceRespawn_ca.paa",
		"(_this distance _target < 3) && (water1 == 0) && (position player inArea [[9752.198, 7760.534], 5, 5, 141, true]) && ('SatchelCharge_Remote_Mag' in (magazines _this))",      // Условие для отображения действия
        "(_this distance _target < 3) && (water1 == 0) && (position player inArea [[9752.198, 7760.534], 5, 5, 141, true]) && ('SatchelCharge_Remote_Mag' in (magazines _this))",      // Условие для прогресса
		{},
		{hint "В процессе"; _caller playMove "AinvPknlMstpSnonWnonDnon_medic3";},
		{hint "Взрывчатка установлена!"; _caller switchMove ""; missionNamespace setVariable ["water1", 1, true];
		[[target1,"water1"], "scripts\boom_exp.sqf"] remoteExec ["execVM", 2];
		player removeMagazine "SatchelCharge_Remote_Mag";
		}, // Code executed on completion
		{_caller switchMove "";},
		[],
		10, // how long
		0,
		true,
		false
	] call BIS_fnc_holdActionAdd;
	
	[
		player, // Object
		"Заложить взрывчатку", // Title
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forceRespawn_ca.paa",
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forceRespawn_ca.paa",
		"(_this distance _target < 3) && (water2 == 0) && (position player inArea [[10532.248, 8208.3], 5, 5, 141, true]) && ('SatchelCharge_Remote_Mag' in (magazines _this))",      // Условие для отображения действия
        "(_this distance _target < 3) && (water2 == 0) && (position player inArea [[10532.248, 8208.3], 5, 5, 141, true]) && ('SatchelCharge_Remote_Mag' in (magazines _this))",      // Условие для прогресса
		{},
		{hint "В процессе"; _caller playMove "AinvPknlMstpSnonWnonDnon_medic3";},
		{hint "Взрывчатка установлена!"; _caller switchMove ""; missionNamespace setVariable ["water2", 1, true];
		[[target2,"water2"], "scripts\boom_exp.sqf"] remoteExec ["execVM", 2];
		player removeMagazine "SatchelCharge_Remote_Mag";
		}, // Code executed on completion
		{_caller switchMove "";},
		[],
		10, // how long
		0,
		true,
		false
	] call BIS_fnc_holdActionAdd;
};