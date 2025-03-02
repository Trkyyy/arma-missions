// Setup Loadouts
player setUnitLoadout(player getVariable["Saved_Loadout",[]]);
[] spawn {
    sleep 3;
    [] call reapercrew_player_management_fnc_setUnitInsigniaLocal;
    [] call reapercrew_player_management_fnc_setPersonalACRESettingsLocal;
};

[] spawn {
    sleep 3;
    player moveInAny respawn_vehicle;
};