#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Determines if the local player can open the dialog.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * True if dialog can be opened, otherwise false <BOOL>
 *
 * Example:
 * [] call dnt_deathnote_fnc_canOpenMenu;
 *
 * Public: No
 */

private _unit = [] call CBA_fnc_currentUnit;
alive _unit && QUOTE(ADDON) in items _unit;