// ARMA3.RU Mission Template
enableSaving [false, false]; // Не надо ничего сейвить, мы ж не в сингл играем
0 = execVM "add_med.sqf"; // Дадим немножко медицины и беруши
setTerrainGrid 3.125; // Красивая отрисовка земли вдали

// Init modules
#include "a3a_modules.hpp"
{
	[] execVM "A3A_MODULES\" + _x + "\init.sqf";
} forEach A3A_MODULES;

[
	[
		KS,
		[
			["North_platoon", "1-ый стрелкоый взвод (Север)", false, "1-ый стрелкоый взвод (Север)", ["south"], []],
			["South_platoon", "2-ой стрелкоый взвод (ЮГ)", false, "2-ой стрелкоый взвод (ЮГ)", ["north"], []],
			["Tank_squad", "Т-64БВ", false, "Т-64БВ", ["south_veh"], []]
		]
	]
] execVM "scripts\fnc_kik_spawnChoice.sqf";