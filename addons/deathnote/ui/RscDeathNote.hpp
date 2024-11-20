#include "\z\dnt\addons\main\ui\RscCommon.hpp"

class ADDON {
    idd = IDD_DEATHNOTE;
    enableSimulation = 1;
    onLoad = QUOTE(call FUNC(onDeathNoteOpen));
    onUnload = QUOTE(call FUNC(onDeathNoteClose));
    onKeyDown = QUOTE(call FUNC(onDeathNoteKeyDown));

    class controls {
        class Background: RscPicture {
            idc = IDC_BACKGROUND;
            // text = QPATHTOF(data\ui\notepad_ca.paa);
            x = QUOTE(0.5 - pixelW * pixelGrid * (DEATHNOTE_BG_WIDTH / 2));
            y = QUOTE(0.5 - pixelH * pixelGrid * (DEATHNOTE_BG_HEIGHT / 2));
            w = QUOTE(pixelW * pixelGrid * DEATHNOTE_BG_WIDTH);
            h = QUOTE(pixelH * pixelGrid * DEATHNOTE_BG_HEIGHT);
        };
    };
};