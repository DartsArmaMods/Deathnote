#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Lights a unit on fire.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [_victim, player] call dnt_deaths_fnc_fire;
 *
 * Public: No
 */

params ["_player", "_killer"];

["ace_fire_burn", [_player, 10]] call CBA_fnc_globalEvent;

[{
    params ["_player", "_killer"];
    [_player, _killer, LLSTRING(setOnFire)] call FUNC(kill);
}, _this, 2] call CBA_fnc_waitAndExecute;