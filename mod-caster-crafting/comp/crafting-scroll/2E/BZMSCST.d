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


APPEND ~BZMSCST~
    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_menu
        SAY @15040  //~Which spell circle do you explore?~
            IF ~~
            THEN REPLY @15050 //~Protection~
                GOTO bz_caster_craft_scribe_scroll_protection

            IF ~~
            THEN REPLY @15051 //~1st arcane circle~
                GOTO bz_caster_craft_scribe_scroll_arcane_circle_1
            IF ~~
            THEN REPLY @15052 //~2nd arcane circle~
                GOTO bz_caster_craft_scribe_scroll_arcane_circle_2
            IF ~~
            THEN REPLY @15053 //~3rd arcane circle~
                GOTO bz_caster_craft_scribe_scroll_arcane_circle_3
            IF ~~
            THEN REPLY @15054 //~4th arcane circle~
                GOTO bz_caster_craft_scribe_scroll_arcane_circle_4
            IF ~~
            THEN REPLY @15055 //~5th arcane circle~
                GOTO bz_caster_craft_scribe_scroll_arcane_circle_5
            IF ~~
            THEN REPLY @15056 //~6th arcane circle~
                GOTO bz_caster_craft_scribe_scroll_arcane_circle_6
            IF ~~
            THEN REPLY @15057 //~7th arcane circle~
                GOTO bz_caster_craft_scribe_scroll_arcane_circle_7
            IF ~~
            THEN REPLY @15058 //~8th arcane circle~
                GOTO bz_caster_craft_scribe_scroll_arcane_circle_8
            IF ~~
            THEN REPLY @15059 //~9th arcane circle~
                GOTO bz_caster_craft_scribe_scroll_arcane_circle_9
            IF ~~
            THEN REPLY @15060 //~10th arcane circle~
                GOTO bz_caster_craft_scribe_scroll_arcane_circle_A

            IF ~~
            THEN REPLY @15061 //~1st divine circle~
                GOTO bz_caster_craft_scribe_scroll_divine_circle_1
            IF ~~
            THEN REPLY @15062 //~2nd divine circle~
                GOTO bz_caster_craft_scribe_scroll_divine_circle_2
            IF ~~
            THEN REPLY @15063 //~3rd divine circle~
                GOTO bz_caster_craft_scribe_scroll_divine_circle_3
            IF ~~
            THEN REPLY @15064 //~4th divine circle~
                GOTO bz_caster_craft_scribe_scroll_divine_circle_4
            IF ~~
            THEN REPLY @15065 //~5th divine circle~
                GOTO bz_caster_craft_scribe_scroll_divine_circle_5
            IF ~~
            THEN REPLY @15066 //~6th divine circle~
                GOTO bz_caster_craft_scribe_scroll_divine_circle_6
            IF ~~
            THEN REPLY @15067 //~7th divine circle~
                GOTO bz_caster_craft_scribe_scroll_divine_circle_7
            IF ~~
            THEN REPLY @15068 //~Quest divine spells~
                GOTO bz_caster_craft_scribe_scroll_divine_circle_Q

            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END


    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_protection
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END


    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_arcane_circle_1
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_arcane_circle_2
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_arcane_circle_3
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_arcane_circle_4
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_arcane_circle_5
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_arcane_circle_6
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_arcane_circle_7
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_arcane_circle_8
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_arcane_circle_9
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_arcane_circle_A
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END



    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_divine_circle_1
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_divine_circle_2
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_divine_circle_3
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_divine_circle_4
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_divine_circle_5
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_divine_circle_6
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_divine_circle_7
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_divine_circle_Q
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

END
