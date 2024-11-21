#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Kills a unit. Gives score for kill depending on settings.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Killer <OBJECT>
 * 2: Message (optional, default: "") <STRING>
 *    - Message to log to _unit's medical log (ACE Medical)
 *
 * Return Value:
 * None
 *
 * Example:
 * [_victim, player] call dnt_deaths_fnc_kill;
 *
 * Public: Yes
 */

params [
    ["_unit", objNull, [objNull]],
    ["_killer", objNull, [objNull]],
    ["_message", "", [""]]
];
TRACE_3("fnc_kill",_unit,_killer,_message);

if (!local _unit || !alive _unit || isNull _killer) exitWith {};

if (GVAR(anonymousDeaths)) then {
    _unit setDamage 1;
} else {
    // Setting is disabled, setDamage needs to be run on server to track kills
    [QGVAR(kill), [_unit, _killer]] call CBA_fnc_serverEvent;
};

if (_message != "" && {"ace_medical" call FUNC(isModLoaded)}) then {
    [_unit, "activity", _message, [_unit, _killer]] call ace_medical_treatment_fnc_addToLog;
};

nil;