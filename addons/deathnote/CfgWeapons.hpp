class CfgWeapons {
    class CBA_MiscItem;
    class CBA_MiscItem_ItemInfo;
    class ADDON: CBA_MiscItem {
        scope = 2;
        author = AUTHOR;

        displayName = CSTRING(displayName);

        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 0.1;
        };
    };
};