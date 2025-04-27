// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhs_mag_30Rnd_556x45_M855A1_PMAG";
_unit addWeapon "rhs_weap_hk416d10_LMT";
_unit addPrimaryWeaponItem "BWA3_muzzle_snds_Rotex_IIIC";
_unit addPrimaryWeaponItem "mkk_CUP_optic_Elcan_reflex";

_unit addWeapon "ACE_Vector";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform "CUP_I_B_PMC_Unit_39";

// Vest with items:
_unit addVest "tfa_lbt_tl_mct";
for '_i' from 1 to 5 do { _unit addItemToVest 'rhs_mag_30Rnd_556x45_M855A1_PMAG';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};

// Backpack with items:
_unit addBackpack "asip_a_02_cb_r";

_unit addHeadgear "rhsusf_opscore_rg_cover_pelt";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";