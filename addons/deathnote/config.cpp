#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        author = AUTHOR;
        authors[] = {"DartRuffian"};
        url = ECSTRING(main,url);
        name = CSTRING(displayName);
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "dnt_main"
        };
        units[] = {};
        weapons[] = {};
        VERSION_CONFIG;
    };
};

#include "CfgWeapons.hpp"
#include "CfgEventHandlers.hpp"
#include "CfgDeaths.hpp"
#include "ui\RscDeathNote.hpp"