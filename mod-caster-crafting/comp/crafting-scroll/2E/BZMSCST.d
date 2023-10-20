EXTEND_TOP ~BZMSCST~ bz_caster_craft_scribe_main_menu    //Your scribing kit is open before you. How do you wish to use it?

            //Scribe scroll: Cleric/Druid
            IF ~OR(2)
    Class(MYSELF, CLERIC_ALL)
    Class(MYSELF, DRUID_ALL)
LevelGT(MYSELF, 6)~
                THEN REPLY @15010 //scribe a scroll
                    GOTO bz_caster_craft_scribe_scroll_menu

            //Scribe scroll: Mages
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
Class(MYSELF, MAGE_ALL)
LevelGT(MYSELF, 8)~
                THEN REPLY @15010 //scribe a scroll
                    GOTO bz_caster_craft_scribe_scroll_menu

            //Scribe scroll: Bard
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
!Class(MYSELF, MAGE_ALL)
Class(MYSELF, BARD_ALL)
LevelGT(MYSELF, 9)~
                THEN REPLY @15010 //scribe a scroll
                    GOTO bz_caster_craft_scribe_scroll_menu

            //Scribe scroll: Ranger
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
!Class(MYSELF, MAGE_ALL)
!Class(MYSELF, BARD_ALL)
Class(MYSELF, RANGER_ALL)
LevelGT(MYSELF, 11)~
                THEN REPLY @15010 //scribe a scroll
                    GOTO bz_caster_craft_scribe_scroll_menu

            //Scribe scroll: Paladin
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
!Class(MYSELF, MAGE_ALL)
!Class(MYSELF, BARD_ALL)
!Class(MYSELF, RANGER_ALL)
Class(MYSELF, PALADIN_ALL)
LevelGT(MYSELF, 14)~
                THEN REPLY @15010 //scribe a scroll
                    GOTO bz_caster_craft_scribe_scroll_menu

END


