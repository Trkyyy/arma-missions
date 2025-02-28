
comment "Exported from Arsenal by L. Turkey";

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "sp_fwa_fal_l1a1_wood";
this addPrimaryWeaponItem "sp_fwa_20Rnd_762_FAL_Metric";
this addPrimaryWeaponItem "sp_fwa_1rnd_riflegrenade_mas_ap";

comment "Add containers";
this forceAddUniform "U_Simc_TCU_mk1_blench";
this addVest "V_Simc_garlan_M56_zusp";
this addBackpack "B_simc_pack_frem_flak_med5";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToVest "CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_M";};
for "_i" from 1 to 4 do {this addItemToVest "CUP_20Rnd_762x51_FNFAL_M";};
this addItemToVest "CUP_HandGrenade_M67";
for "_i" from 1 to 4 do {this addItemToBackpack "CUP_20Rnd_762x51_FNFAL_M";};
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {this addItemToBackpack "CUP_HandGrenade_M67";};
for "_i" from 1 to 9 do {this addItemToBackpack "sp_fwa_1rnd_riflegrenade_mas_ap";};
this addHeadgear "H_Simc_Boon_green_1";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "CUP_NVG_PVS7_Hide";

comment "Set identity";
[this,"RussianHead_1","male01rus"] call BIS_fnc_setIdentity;
