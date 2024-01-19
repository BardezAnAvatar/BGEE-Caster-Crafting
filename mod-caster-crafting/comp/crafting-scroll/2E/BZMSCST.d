EXTEND_TOP ~BZMSCST~ ~bz_caster_craft-scribe-main_menu~    //Your scribing kit is open before you. How do you wish to use it?

            //Scribe scroll: Cleric/Druid
            IF ~OR(2)
    Class(MYSELF, CLERIC_ALL)
    Class(MYSELF, DRUID_ALL)
LevelGT(MYSELF, 6)~
                THEN REPLY @15010 //scribe a scroll
                    GOTO ~scribe_scroll-menu~

            //Scribe scroll: Mages
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
Class(MYSELF, MAGE_ALL)
LevelGT(MYSELF, 8)~
                THEN REPLY @15010 //scribe a scroll
                    GOTO ~scribe_scroll-menu~

            //Scribe scroll: Bard
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
!Class(MYSELF, MAGE_ALL)
Class(MYSELF, BARD_ALL)
LevelGT(MYSELF, 9)~
                THEN REPLY @15010 //scribe a scroll
                    GOTO ~scribe_scroll-menu~

            //Scribe scroll: Ranger
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
!Class(MYSELF, MAGE_ALL)
!Class(MYSELF, BARD_ALL)
Class(MYSELF, RANGER_ALL)
LevelGT(MYSELF, 11)~
                THEN REPLY @15010 //scribe a scroll
                    GOTO ~scribe_scroll-menu~

            //Scribe scroll: Paladin
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
!Class(MYSELF, MAGE_ALL)
!Class(MYSELF, BARD_ALL)
!Class(MYSELF, RANGER_ALL)
Class(MYSELF, PALADIN_ALL)
LevelGT(MYSELF, 14)~
                THEN REPLY @15010 //scribe a scroll
                    GOTO ~scribe_scroll-menu~

END


APPEND ~BZMSCST~
    IF ~~
    THEN BEGIN ~scribe_scroll-menu~
        SAY @15040  //~Which spell circle do you explore?~
            IF ~~
            THEN REPLY @15050 //~Protection~
                GOTO ~scribe_scroll-protection~

            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END


    IF ~~
    THEN BEGIN ~scribe_scroll-protection~
        SAY @15080 //~Which scroll of Protection do you wish to scribe?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END


    IF ~~
    THEN BEGIN ~scribe_scroll-arcane-circle_1~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-arcane-circle_2~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-arcane-circle_3~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-arcane-circle_4~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-arcane-circle_5~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-arcane-circle_6~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-arcane-circle_7~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-arcane-circle_8~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-arcane-circle_9~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-arcane-circle_A~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END



    IF ~~
    THEN BEGIN ~scribe_scroll-divine-circle_1~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-divine-circle_2~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-divine-circle_3~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-divine-circle_4~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-divine-circle_5~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-divine-circle_6~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-divine-circle_7~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

    IF ~~
    THEN BEGIN ~scribe_scroll-divine-circle_Q~
        SAY @15041 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @15022 //~[Pick another spell circle]~
                GOTO ~scribe_scroll-menu~
            IF ~~
            THEN REPLY @15021 // ~Go back to your scribe tools.~
                GOTO ~bz_caster_craft-scribe-main_menu~
            IF ~~
            THEN REPLY @15020 //~Pack up your scribe tools~
                EXIT
    END

END
