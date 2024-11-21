#include "script_component.hpp"

if (isServer) then {
    call COMPILE_SCRIPT(XEH_postInitServer);
};

// Used to make sure death events always run locally
[QGVAR(runDeathEffect), {
    params ["_args", "_deathType"];
    TRACE_2("Running death effect",_args,_deathType);
    (GVAR(types) get _deathType) params ["_statement"];
    _args call _statement;
}] call CBA_fnc_addEventHandler;