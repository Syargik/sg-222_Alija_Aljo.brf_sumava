_uniform = missionNamespace getVariable "SPNuniforms";

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhs_mag_30Rnd_556x45_M855A1_PMAG";
_unit addWeapon "rhs_weap_hk416d10_LMT";
_unit addPrimaryWeaponItem "BWA3_muzzle_snds_Rotex_IIIC";
_unit addPrimaryWeaponItem "mkk_CUP_optic_Elcan_reflex";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;

// Vest with items:
_unit addVest "tfa_lbt_operator_mct";
for '_i' from 1 to 5 do { _unit addItemToVest 'rhs_mag_30Rnd_556x45_M855A1_PMAG';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};

// Backpack with items:
_unit addBackpack "acp_A3_LDF_core_B_AssaultPackEnhanced_A3_LDF";
_unit addHeadgear "rhsusf_opscore_rg_cover_pelt";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";