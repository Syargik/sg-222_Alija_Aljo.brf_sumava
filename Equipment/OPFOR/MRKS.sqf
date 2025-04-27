_headgear = missionNamespace getVariable "OPFORheadgears";

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhs_10Rnd_762x54mmR_7N14";
_unit addWeapon "rhs_weap_svds_npz";
_unit addPrimaryWeaponItem "BWA3_optic_PMII_ShortdotCC";

_unit addWeapon "ACE_Vector";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform "LOP_U_ISTS_Fatigue_26";

// Vest with items:
_unit addVest "tfa_cpc_Fastbelt_coy_empty";
for '_i' from 1 to 5 do { _unit addItemToVest 'rhs_10Rnd_762x54mmR_7N14';};
for '_i' from 1 to 2 do { _unit addItemToVest 'mkk_10Rnd_762x54mmR_t46';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};

// Backpack with items:
_unit addBackpack "fatpack_coy";

_unit addHeadgear _headgear;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";