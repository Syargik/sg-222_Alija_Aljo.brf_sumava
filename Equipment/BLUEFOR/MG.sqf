_uniform = missionNamespace getVariable "BLUFORuniforms";
_headgear = missionNamespace getVariable "BLUFORheadgears";

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "mkk_100Rnd_Mg3_762x51";
_unit addWeapon "mkk_weap_mg3_rails";
_unit addPrimaryWeaponItem "rhsusf_acc_su230a";

_unit addWeapon "mkk_B8_Binocular";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;

// Vest with items:
_unit addVest "acp_IT_Vegetato_JCA_MCRP_JCA_MCRP_V_CarrierRigKBT_01_tactical_IT_Vegetato_F";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
for '_i' from 1 to 1 do { _unit addItemToVest 'mkk_100Rnd_Mg3_762x51';};

// Backpack with items:
_unit addBackpack "acp_IT_Vegetato_core_B_AssaultPackEnhanced_IT_Vegetato_insignia";
for '_i' from 1 to 2 do { _unit addItemToBackpack 'mkk_100Rnd_Mg3_762x51';};
for '_i' from 1 to 1 do { _unit addItemToBackpack 'mkk_100Rnd_Mg3_762x51_Tracer';};

_unit addHeadgear _headgear;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";