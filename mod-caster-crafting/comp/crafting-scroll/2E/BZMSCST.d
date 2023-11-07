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
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END


    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_protection
        SAY @15080 //~Which scroll of Protection do you wish to scribe?~
            IF ~~
            THEN REPLY @15032 //~[Pick another spell circle]~
                GOTO bz_caster_craft_scribe_scroll_menu
            IF ~~
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
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
            THEN REPLY @15031 // ~Go back to your scribe tools.~
                GOTO bz_caster_craft_scribe_main_menu
            IF ~~
            THEN REPLY @15030 //~Pack up your scribe tools~
                EXIT
    END

END
