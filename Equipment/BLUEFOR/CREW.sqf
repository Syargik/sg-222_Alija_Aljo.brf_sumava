_uniform = missionNamespace getVariable "BLUFORuniforms";

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhs_mag_30Rnd_556x45_M855A1_PMAG";
_unit addWeapon "mkk_hlc_rifle_ACR_SBR_black";
_unit addPrimaryWeaponItem "mkk_hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";

_unit addWeapon "mkk_B8_Binocular";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;

// Vest with items:
_unit addVest "JCA_MCRP_V_CarrierRigKBT_01_crew_olive_F";
for '_i' from 1 to 5 do { _unit addItemToVest 'rhs_mag_30Rnd_556x45_M855A1_PMAG';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
_unit addHeadgear "rhsusf_cvc_ess";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";