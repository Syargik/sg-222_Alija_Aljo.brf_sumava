_uniform = missionNamespace getVariable "BLUFORuniforms";
_headgear = missionNamespace getVariable "BLUFORheadgears";

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhsusf_20Rnd_762x51_m118_special_Mag";
_unit addWeapon "mkk_M110k1";
_unit addPrimaryWeaponItem "mkk_hlc_muzzle_SF3P_762R";
_unit addPrimaryWeaponItem "BWA3_optic_PMII_ShortdotCC";

_unit addWeapon "ACE_Vector";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;

// Vest with items:
_unit addVest "JCA_MCRP_V_CarrierRigKBT_01_recon_olive_F";
for '_i' from 1 to 5 do { _unit addItemToVest 'rhsusf_20Rnd_762x51_m118_special_Mag';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};

// Backpack with items:
_unit addBackpack "acp_IT_Vegetato_core_B_AssaultPackEnhanced_IT_Vegetato_insignia";

_unit addHeadgear _headgear;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";