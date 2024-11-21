#include "script_component.hpp"

#include "XEH_PREP.hpp"

uiNamespace setVariable [QGVAR(isModLoadedCache), createHashMap];

[] call FUNC(scanConfig);