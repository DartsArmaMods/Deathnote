#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Checks if an addon is loaded.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Killer <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * ["AddonName"] call dnt_deaths_fnc_isModLoaded;
 *
 * Public: No
 */

params ["_addon"];

GVAR(isModLoadedCache) getOrDefaultCall [toLowerANSI _addon, { isClass (configFile >> "CfgPatches" >> _addon) }, true];