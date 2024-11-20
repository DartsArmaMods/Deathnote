#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Called when a key is pressed in the Death Note dialog.
 *
 * Arguments:
 * 0: Arsenal display <DISPLAY>
 * 1: Key being pressed <NUMBER>
 * 2: Shift state <BOOL>
 * 3: Ctrl state <BOOL>
 * 4: Alt state <BOOL>
 *
 * Return Value:
 * None
 *
 * Public: No
 */

params ["_display", "_key", "_shift", "_ctrl", "_alt"];
TRACE_5("fnc_onDeathNoteOpen",_display,_key,_shift,_ctrl,_alt);

// User is likely using a keyboard shortcut
if (_shift || _ctrl || _alt) exitWith {};

// play pencil sound
// play eraser sound if backspace