#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Scans and caches config for death types.
 *
 * Arguments:
 * - None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call dnt_deaths_fnc_scanConfig;
 *
 * Public: No
 */

TRACE_1("Scanning config for death types",nil);

private _deaths = createHashMap;

{
    private _requiredAddons = getArray (_x >> "requiredAddons");
    // If addons array isn't empty, check if each one is loaded
    if (_requiredAddons isNotEqualTo [] && {
        _requiredAddons select { _x call FUNC(isModLoaded) } isEqualTo [];
    }) then { continue };

    // Not a fan of this setup, but it is what it is
    private _baseStatement = format [QUOTE(
        params [ARR_2('_player','_killer')];
        if (!local _player) exitWith {
            [ARR_3(QQGVAR(runDeathEffect),[ARR_2(_this,'%1')],_player)] call CBA_fnc_targetEvent;
        };
), configName _x]; // Done to prevent a padded macro warning

    private _statement = format ["%1 %2", _baseStatement, getText (_x >> "statement")];

    _deaths set [configName _x, [
        compile _statement,
        getText (_x >> "logMessage")
    ]];
} forEach ("true" configClasses (configFile >> QUOTE(ADDON)));

uiNamespace setVariable [QGVAR(types), compileFinal _deaths];