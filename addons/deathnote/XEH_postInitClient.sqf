#include "script_component.hpp"

[QUOTE(ADDON), "CONTAINER", "STR_single_open", [], "", {
    [] call FUNC(canOpenMenu);
}, {
    closeDialog 2; // Close inventory
    [{[] call FUNC(openMenu)}] call CBA_fnc_execNextFrame;
}] call CBA_fnc_addItemContextMenuOption;