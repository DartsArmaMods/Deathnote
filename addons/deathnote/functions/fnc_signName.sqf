#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Determines if the local player can open the dialog.
 *
 * Arguments:
 * 0: Unit <OBJECT|STRING>
 *    - If STRING, will check getPlayerUID and name of each alive player
 * 1: Killer <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * ["SteamID", player] call dnt_deathnote_fnc_signName;
 *
 * Public: Yes
 */

params [
    ["_unit", objNull, [objNull]],
    ["_killer", objNull, [objNull]],
    ["_deathType", "", [""]]
];
TRACE_3("fnc_signName",_unit,_killer,_deathType);

if (_unit isEqualType "") then {
    private _players = ([] call CBA_fnc_players) select { alive _x };

    {
        if (getPlayerUID _x == _unit || { name _x == _unit }) exitWith {
            _unit = _x;
        };
    } forEach _players;
};

if (isNull _unit) exitWith {
    WARNING_1("Could not find unit with value '%1'",_unit);
};

if (_deathType == "") then {
    _deathType = selectRandom (keys EGVAR(deaths,types));
};

(EGVAR(deaths,types) get _deathType) params ["_statement"];
[_unit, _killer] call _statement;

nil;