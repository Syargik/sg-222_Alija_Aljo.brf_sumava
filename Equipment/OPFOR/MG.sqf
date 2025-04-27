_headgear = missionNamespace getVariable "OPFORheadgears";

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhsusf_100Rnd_762x51_m80a1epr";
_unit addWeapon "rhs_weap_m240B";
_unit addPrimaryWeaponItem "rhsusf_acc_su230a";

_unit addWeapon "Binocular";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform "LOP_U_ISTS_Fatigue_26";

// Vest with items:
_unit addVest "tfa_cpc_weaponsbelt_coy_empty";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};

// Backpack with items:
_unit addBackpack "rhsusf_falconii_coy";
for '_i' from 1 to 2 do { _unit addItemToBackpack 'rhsusf_100Rnd_762x51_m80a1epr';};

_unit addHeadgear _headgear;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";