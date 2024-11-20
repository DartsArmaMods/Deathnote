#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Opens the Death Note dialog.
 *
 * Arguments:
 * 0: Ignore "canOpen" checks (optional, default: false) <BOOL>
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call dnt_deathnote_fnc_openMenu;
 *
 * Public: Yes
 */

params [["_ignore", false, [false]]];
TRACE_1("fnc_openMenu",_ignore);

if (!_ignore && {!([] call FUNC(canOpenMenu))}) exitWith { systemChat "failed condition" };

systemChat "open menu";

createDialog QUOTE(ADDON);
nil;