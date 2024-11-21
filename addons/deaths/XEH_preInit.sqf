#include "script_component.hpp"

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

GVAR(aceMedical) = isClass (configFile >> "CfgPatches" >> "ace_medical");

private _category = [QUOTE(MOD_NAME), LLSTRING(displayName)];

#include "initSettings.inc.sqf"

GVAR(isModLoadedCache) = uiNamespace getVariable QGVAR(isModLoadedCache);;
GVAR(types) = uiNamespace getVariable QGVAR(types);