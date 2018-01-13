//	[_Box] execVM "Scripts\NEKY_supply\NEKY_SupplyBox.sqf";
//	
//	Template
//	
//	This is a template for a customized supply box.

if !(isServer) exitWith {False};

Private "_Box";

_Box = [_This, 0, ObjNull, [ObjNull]] call BIS_fnc_Param;

// Clear Box
ClearItemCargoGlobal _Box;
ClearWeaponCargoGlobal _Box;
ClearBackPackCargoGlobal _Box;
ClearMagazineCargoGLobal _Box;
sleep 0.5;

// Add Items
_Box addItemCargoGlobal ["FirstAidKit",50];
_Box addItemCargoGlobal ["Medikit",2];