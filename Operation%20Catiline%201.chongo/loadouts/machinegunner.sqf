

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
this addWeapon "sp_fwa_mag58";
this addPrimaryWeaponItem "sp_fwa_100Rnd_762_mag";

comment "Add containers";
this forceAddUniform "U_Simc_TCU_mk1_blench";
this addVest "V_Simc_garlan_M56_zusp";
this addBackpack "B_simc_pack_frem_flak_med5";

comment "Add items to containers";
this addItemToVest "CUP_HandGrenade_M67";
this addItemToVest "sp_fwa_100Rnd_762_mag";
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {this addItemToBackpack "CUP_HandGrenade_M67";};
for "_i" from 1 to 3 do {this addItemToBackpack "sp_fwa_200Rnd_762_mag";};
this addHeadgear "H_Simc_Boon_green_1";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "CUP_NVG_PVS7_Hide";

comment "Set identity";
[this,"WhiteHead_10","male02rus"] call BIS_fnc_setIdentity;
