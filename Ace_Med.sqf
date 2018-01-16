if (hasInterface) then {
    _condition = {player in [w1a,w1a1,w1b1,w1c1]};//_condition = {leader (group player) isEqualTo (leader player)};// //<only works MP
    _code = {openMap true;[player, systemChat "Pilot: Awaiting coordinates"] onMapSingleClick {[blufor,"","drop",    ["spawn",_pos,"despawn"],"Scripts\NEKY_supply\Supply Box Templates\Medical.sqf",false] execVM "Scripts\NEKY_supply\NEKY_SupplyMapClick.sqf"}};
    _action = ["Medical Resupply", "Medical Resupply","", _code, _condition] call ace_interact_menu_fnc_createAction;
    [typeOf player, 1, ["ACE_SelfActions","ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToClass;
};
