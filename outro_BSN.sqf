[parseText "<t font='PuristaBold' size='1.5'>Боснийцы уничтожили водонапорные вышки!</t>", [0, 0.8, 1, 1], nil, 3, 0.7, 0] spawn BIS_fnc_textTiles;

_camera = "camera" camCreate [9826.096, 7742.242, 37.332];
_camera camSetTarget [9753.387, 7760.858, 1.961];
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;
_camera say2D "bosn";
_camera camPrepareFOV 1;
_camera camCommitPrepared 0;
_camera camPrepareFOV 1;
_camera camCommitPrepared 5;

waitUntil {camCommitted _camera};
[format ["Осталось игроков на стороне атаки: %1", (east countside playableUnits)],0,0.8,1.5,0.5] spawn bis_fnc_dynamictext;

_camera = "camera" camCreate [9629.535, 7725.895, 55.769];
_camera camSetTarget [9753.387, 7760.858, 1.961];
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;
_camera camPrepareFOV 1;
_camera camCommitPrepared 0;
_camera camPrepareFOV 1;
_camera camCommitPrepared 5;

waitUntil {camCommitted _camera};
[format ["Осталось игроков на стороне обороны: %1", (west countside playableUnits)],0,0.8,2,0.5] spawn bis_fnc_dynamictext;

_camera = "camera" camCreate [10460.148, 8130.348, 27.413];
_camera camSetTarget [10533.112, 8209.132, 0];
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;
_camera camPrepareFOV 1;
_camera camCommitPrepared 0;
_camera camPrepareFOV 1;
_camera camCommitPrepared 5;

waitUntil {camCommitted _camera};

_camera = "camera" camCreate [10623.647, 8292.097, 38.618];
_camera camSetTarget [10533.112, 8209.132, 0];
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;
_camera camPrepareFOV 1;
_camera camCommitPrepared 0;
_camera camPrepareFOV 1;
_camera camCommitPrepared 5;

waitUntil {camCommitted _camera};
[parseText "<t font='PuristaBold' size='2'>Победа Атаки!</t>", [0.35, 0.46, 1, 1], nil, 4, 0.7, 0] spawn BIS_fnc_textTiles;

_camera = "camera" camCreate [10776.183, 7820.124, 278.595];
_camera camSetTarget [10357.911, 8051.042, 0];
_camera cameraEffect ["internal", "BACK"];
_camera camCommitPrepared 0;
_camera camPrepareFOV 1;
_camera camCommitPrepared 0;
_camera camPrepareFOV 1;
_camera camCommitPrepared 3;

waitUntil {camCommitted _camera};
cutText ["", "BLACK OUT", 1];