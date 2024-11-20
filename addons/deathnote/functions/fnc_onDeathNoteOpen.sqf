#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Called when the death note is opened.
 *
 * Arguments:
 * 0: Display <DISPLAY>
 *
 * Return Value:
 * None
 *
 * Public: No
 */

params ["_display"];
TRACE_1("fnc_onDeathNoteOpen",_display);

#ifdef DEBUG_MODE_FULL
// Resizing test
private _background = _display displayCtrl IDC_BACKGROUND;
private _position = [
    0.5 - pixelW * pixelGrid * (DEATHNOTE_BG_WIDTH / 2),
    0.5 - pixelH * pixelGrid * (DEATHNOTE_BG_HEIGHT / 2),
    pixelW * pixelGrid * DEATHNOTE_BG_WIDTH,
    pixelH * pixelGrid * DEATHNOTE_BG_HEIGHT
];
_background ctrlSetPosition _position;
_background ctrlCommit 0;
#endif

[QGVAR(opened), _this] call CBA_fnc_localEvent;
nil;