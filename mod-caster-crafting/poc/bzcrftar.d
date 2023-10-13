BEGIN ~BZCRFTAR~

    IF ~ClassLevelLT(Myself,WIZARD,9)~
    THEN BEGIN bz_caster_craft_arcane_not_qualified
        SAY @10000
            IF ~~ THEN EXIT
    END

    IF ~ClassLevelGT(Myself,WIZARD,8)~
    THEN BEGIN bz_caster_craft_arcane_qualified
        SAY @10001
           IF ~~ THEN GOTO bz_caster_craft_arcane_main_menu
    END

    IF ~~
    THEN BEGIN bz_caster_craft_arcane_main_menu
        SAY @10002
            IF ~~
            THEN REPLY @10010 //~1st circle~
                GOTO bz_caster_craft_arcane_circle_1
            IF ~~
            THEN REPLY @10011 //~2nd circle~
                GOTO bz_caster_craft_arcane_circle_2
            IF ~~
            THEN REPLY @10012 //~3rd circle~
                GOTO bz_caster_craft_arcane_circle_3
            IF ~~
            THEN REPLY @10013 //~4th circle~
                GOTO bz_caster_craft_arcane_circle_4
            IF ~~
            THEN REPLY @10014 //~5th circle~
                GOTO bz_caster_craft_arcane_circle_5
            IF ~~
            THEN REPLY @10015 //~6th circle~
                GOTO bz_caster_craft_arcane_circle_6
            IF ~~
            THEN REPLY @10016 //~7th circle~
                GOTO bz_caster_craft_arcane_circle_7
            IF ~~
            THEN REPLY @10017 //~8th circle~
                GOTO bz_caster_craft_arcane_circle_8
            IF ~~
            THEN REPLY @10018 //~9th circle~
                GOTO bz_caster_craft_arcane_circle_9
            IF ~~
            THEN REPLY @10019 //~10th circle~
                GOTO bz_caster_craft_arcane_circle_A
            IF ~~
            THEN REPLY @10030 //~[Close your spellbook and pack up your scribe tools]~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_arcane_circle_1
        SAY @10051 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @10031 //~[Pick another spell circle]~
                GOTO bz_caster_craft_arcane_main_menu
            IF ~~
            THEN REPLY @10030 //~[Close your spellbook and pack up your scribe tools]~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_arcane_circle_2
        SAY @10051 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @10031 //~[Pick another spell circle]~
                GOTO bz_caster_craft_arcane_main_menu
            IF ~~
            THEN REPLY @10030 //~[Close your spellbook and pack up your scribe tools]~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_arcane_circle_3
        SAY @10051 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @10031 //~[Pick another spell circle]~
                GOTO bz_caster_craft_arcane_main_menu
            IF ~~
            THEN REPLY @10030 //~[Close your spellbook and pack up your scribe tools]~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_arcane_circle_4
        SAY @10051 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @10031 //~[Pick another spell circle]~
                GOTO bz_caster_craft_arcane_main_menu
            IF ~~
            THEN REPLY @10030 //~[Close your spellbook and pack up your scribe tools]~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_arcane_circle_5
        SAY @10051 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @10031 //~[Pick another spell circle]~
                GOTO bz_caster_craft_arcane_main_menu
            IF ~~
            THEN REPLY @10030 //~[Close your spellbook and pack up your scribe tools]~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_arcane_circle_6
        SAY @10051 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @10031 //~[Pick another spell circle]~
                GOTO bz_caster_craft_arcane_main_menu
            IF ~~
            THEN REPLY @10030 //~[Close your spellbook and pack up your scribe tools]~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_arcane_circle_7
        SAY @10051 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @10031 //~[Pick another spell circle]~
                GOTO bz_caster_craft_arcane_main_menu
            IF ~~
            THEN REPLY @10030 //~[Close your spellbook and pack up your scribe tools]~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_arcane_circle_8
        SAY @10051 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @10031 //~[Pick another spell circle]~
                GOTO bz_caster_craft_arcane_main_menu
            IF ~~
            THEN REPLY @10030 //~[Close your spellbook and pack up your scribe tools]~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_arcane_circle_9
        SAY @10051 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @10031 //~[Pick another spell circle]~
                GOTO bz_caster_craft_arcane_main_menu
            IF ~~
            THEN REPLY @10030 //~[Close your spellbook and pack up your scribe tools]~
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_arcane_circle_A
        SAY @10051 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @10031 //~[Pick another spell circle]~
                GOTO bz_caster_craft_arcane_main_menu
            IF ~~
            THEN REPLY @10030 //~[Close your spellbook and pack up your scribe tools]~
                EXIT
    END
