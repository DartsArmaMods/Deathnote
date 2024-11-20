#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Called when the death note is closed.
 *
 * Arguments:
 * 0: Display <DISPLAY>
 * 1: Exit code <NUMBER>
 *
 * Return Value:
 * None
 *
 * Public: No
 */

params ["_display", "_exitCode"];
TRACE_2("fnc_onDeathNoteClose",_display,_exitCode);

[QGVAR(closed), _this] call CBA_fnc_localEvent;
nil;