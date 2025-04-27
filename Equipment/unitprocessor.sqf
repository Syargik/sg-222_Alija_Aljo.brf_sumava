_unit = _this select 0;
_faction = _this select 1;
_loadout = _this select 2;

_item_processor = {
	removeAllItems _this;
	removeAllWeapons _this;
	removeAllItemsWithMagazines _this;
	removeAllAssignedItems _this;
	removeUniform _this;
	removeBackpack _this;
	removeHeadgear _this;
	removeVest _this;
	removeGoggles _this;
};

if (!isServer) exitWith {};

_unit call _item_processor;

_svn = format ["SerP_equipment_codes_%1_%2",_faction, _loadout];
if (isNil _svn) then
{
	missionNamespace setVariable [_svn, 
		compile preprocessFileLineNumbers format ["Equipment\%1\%2.sqf", _faction, _loadout]];
};

[_unit] call (missionNamespace getVariable [_svn, {}]);

missionNamespace setVariable ["BLUFORuniforms", [
    "acp_IT_Vegetato_core_U_I_CombatUniform_shortsleeve_IT_Vegetato_insignia",
    "acp_IT_Vegetato_core_U_I_CombatUniform_shortsleeve_IT_Vegetato",
	"acp_IT_Vegetato_core_U_I_CombatUniform_IT_Vegetato_insignia",
	"acp_IT_Vegetato_core_U_I_CombatUniform_IT_Vegetato"
] call BIS_fnc_selectRandom];

missionNamespace setVariable ["BLUFORheadgears", [
    "acp_IT_Vegetato_modern_west_H_HelmetFASTMT_Cover_IT_Vegetato_F",
    "acp_IT_Vegetato_core_H_HelmetB_light_IT_Vegetato",
	"acp_IT_Vegetato_core_H_HelmetB_light_basic_IT_Vegetato",
	"acp_IT_Vegetato_core_H_HelmetSpecB_IT_Vegetato",
	"acp_IT_Vegetato_core_H_HelmetB_IT_Vegetato"
] call BIS_fnc_selectRandom];

missionNamespace setVariable ["OPFORheadgears", [
    "rhssaf_helmet_m97_olive_nocamo",
    "rhssaf_helmet_m97_olive_nocamo_black_ess",
	"rhssaf_helmet_m97_olive_nocamo_black_ess_bare"
] call BIS_fnc_selectRandom];

missionNamespace setVariable ["SPNuniforms", [
    "CUP_I_B_PMC_Unit_39",
    "CUP_I_B_PMC_Unit_42",
	"USP_SOFTSHELL_G3C_RGR_MCT"
] call BIS_fnc_selectRandom];