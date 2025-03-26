params ["_unit"];
comment "Exported from Arsenal by L. Turkey";



comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add weapons";
_unit addWeapon "sp_fwa_fal_l1a1_wood";
_unit addPrimaryWeaponItem "sp_fwa_20Rnd_762_FAL_Metric";

comment "Add containers";
_unit forceAddUniform "U_Simc_TCU_mk1_blench";
_unit addVest "V_Simc_garlan_M56_zusp";
_unit addBackpack "B_simc_pack_frem_flak_med5";

comment "Add items to containers";
for "_i" from 1 to 2 do {_unit addItemToVest "CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_M";};
for "_i" from 1 to 4 do {_unit addItemToVest "CUP_20Rnd_762x51_FNFAL_M";};
_unit addItemToVest "CUP_HandGrenade_M67";
for "_i" from 1 to 4 do {_unit addItemToBackpack "CUP_20Rnd_762x51_FNFAL_M";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "CUP_HandGrenade_M67";};
_unit addHeadgear "H_Simc_Boon_green_1";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "CUP_NVG_PVS7_Hide";

comment "Set identity";
[_unit,"LivonianHead_1","male01rus"] call BIS_fnc_setIdentity;
