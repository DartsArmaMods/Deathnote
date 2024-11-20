#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        author = AUTHOR;
        authors[] = {"DartRuffian"};
        url = ECSTRING(main,url);
        name = CSTRING(displayName); // Just use "Death Note" instead of "Death Note - Death Note"
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "dnt_main"
        };
        units[] = {};
        weapons[] = {};
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"