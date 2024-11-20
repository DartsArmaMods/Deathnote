// https://ptb.discord.com/channels/976165959041679380/976224551610486894/1308625007588413573

class GVAR(deaths) {
    class instant {
        requiredAddons[] = {}; // Death type is unused if any addon name is missing
        statement = "(_this select 0) setDamage 1"; // [_player, _killer] | runs local to _player
        medicalMessage = "They suddenly died..."; // Log to patient medical log (ACE Medical only)
    };
};