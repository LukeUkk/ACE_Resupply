if (hasInterface) then {
    _condition = {player in [w1a,w1a1,w1b1,w1c1]}; //<only works MP //_condition = {leader (group player) isEqualTo (leader player)};
    _code = {openMap true;[player, systemChat "Pilot: Awaiting coordinates"] onMapSingleClick {[blufor,"","drop",    ["spawn",_pos,"despawn"],"Scripts\NEKY_supply\Supply Box Templates\Resupply.sqf",false] execVM "Scripts\NEKY_supply\NEKY_SupplyMapClick.sqf"}};
    _action = ["Resupply", "Resupply","", _code, _condition] call ace_interact_menu_fnc_createAction;
    [typeOf player, 1, ["ACE_SelfActions","ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToClass;
};

// Thanks to Neko for the scripts and helping fixing errors & Guzzman for restucturing the code to be easier to read & helping fixing errors:) 
// Here I have made nekos scripts and functions compatabile to the ace UI, only thing you can edit really is [blufor,"","drop",["spawn",_pos,"despawn"] so this means/ change side,"","unload or drop", ["markername","mouse click","markername"]
// By Luke.
