_target = _this select 0; // инитим вентиль из холдэкшна
_var = _this select 1; // инитим переменную из холдэкшна
_time = (mkk_platform_missionTime + 15); // задержка перед буум
_gol = 0;

while {_gol == 0} do {
sleep 5;
if (mkk_platform_missionTime > _time) then {
		("rhs_ammo_maaws_HE" createVehicle getpos _target);
		_target setdamage 1;

		switch _var do
		{
			case "water1": { missionNamespace setVariable ["water1", 2, true]; [ruines1, true] remoteExec ["hideObjectGlobal", 2]; };
			case "water2": { missionNamespace setVariable ["water2", 2, true]; [ruines2, true] remoteExec ["hideObjectGlobal", 2]; };
		};

		_gol = 1;
	};
};