// https://ptb.discord.com/channels/976165959041679380/976224551610486894/1308625007588413573

class ADDON {
    /*
    class instant {
        requiredAddons[] = {}; // Death type is unused if any addon name is missing
        statement = "_player setDamage 1"; // runs local to _player
        logMessage = "They suddenly died..."; // Message to add to patient medical log (ACE Medical only)
    };
    */

    class fire {
        requiredAddons[] = {"ace_fire"};
        statement = QUOTE(call FUNC(fire));
        logMessage = CSTRING(setOnFire);
    };
};