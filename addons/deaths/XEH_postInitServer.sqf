#include "script_component.hpp"

[QGVAR(kill), {
    params ["_object", ["_killer", objNull]];
    _object setDamage [1, true, _killer, _killer];
}] call CBA_fnc_addEventHandler;