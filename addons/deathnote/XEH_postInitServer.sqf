#include "script_component.hpp"

[QGVAR(setDamage), {
    params ["_object", "_damage", ["_useEffects", true], ["_killer", objNull], ["_instigator", objNull]];
    _object setDamage [_damage, _useEffects, _killer, _instigator];
}] call CBA_fnc_addEventHandler;