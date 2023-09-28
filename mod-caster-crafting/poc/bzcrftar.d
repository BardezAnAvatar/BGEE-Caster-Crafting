BEGIN ~BZCRFTAR~

IF ~ClassLevelLT(Myself,WIZARD,9)~
THEN BEGIN bz_caster_craft_arcane_not_qualified
    SAY ~Only an arcane caster of level 9 or higher may use these tools.~
        IF ~~ THEN EXIT
END

IF ~ClassLevelGT(Myself,WIZARD,8)~
THEN BEGIN bz_caster_craft_arcane_qualified
    SAY ~You prepare your scribing tools and open your spellbook to look over its contents. Which spell circle do you examine?~
        IF ~~ 
        THEN REPLY ~1st circle~
            GOTO bz_caster_craft_arcane_circle_1
        IF ~~ 
        THEN REPLY ~2nd circle~
            GOTO bz_caster_craft_arcane_circle_2
        IF ~~ 
        THEN REPLY ~3rd circle~
            GOTO bz_caster_craft_arcane_circle_3
        IF ~~ 
        THEN REPLY ~4th circle~
            GOTO bz_caster_craft_arcane_circle_4
        IF ~~ 
        THEN REPLY ~5th circle~
            GOTO bz_caster_craft_arcane_circle_5
        IF ~~ 
        THEN REPLY ~6th circle~
            GOTO bz_caster_craft_arcane_circle_6
        IF ~~ 
        THEN REPLY ~7th circle~
            GOTO bz_caster_craft_arcane_circle_7
        IF ~~ 
        THEN REPLY ~8th circle~
            GOTO bz_caster_craft_arcane_circle_8
        IF ~~ 
        THEN REPLY ~9th circle~
            GOTO bz_caster_craft_arcane_circle_9
        IF ~~ 
        THEN REPLY ~10th circle~
            GOTO bz_caster_craft_arcane_circle_10
        IF ~~ 
        THEN REPLY ~[Close your spellbook and pack up your scribe tools]~
            EXIT
END

IF ~~
THEN BEGIN bz_caster_craft_arcane_circle_1
    SAY ~Which spell do you examine?~
        IF ~~
        THEN REPLY ~[Pick another spell circle]~
            GOTO bz_caster_craft_arcane_qualified
        IF ~~
        THEN REPLY ~[Close your spellbook and pack up your scribe tools]~
            EXIT
END

IF ~~
THEN BEGIN bz_caster_craft_arcane_circle_2
    SAY ~Which spell do you examine?~
        IF ~~
        THEN REPLY ~[Pick another spell circle]~
            GOTO bz_caster_craft_arcane_qualified
        IF ~~
        THEN REPLY ~[Close your spellbook and pack up your scribe tools]~
            EXIT
END

IF ~~
THEN BEGIN bz_caster_craft_arcane_circle_3
    SAY ~Which spell do you examine?~
        IF ~~
        THEN REPLY ~[Pick another spell circle]~
            GOTO bz_caster_craft_arcane_qualified
        IF ~~
        THEN REPLY ~[Close your spellbook and pack up your scribe tools]~
            EXIT
END

IF ~~
THEN BEGIN bz_caster_craft_arcane_circle_4
    SAY ~Which spell do you examine?~
        IF ~~
        THEN REPLY ~[Pick another spell circle]~
            GOTO bz_caster_craft_arcane_qualified
        IF ~~
        THEN REPLY ~[Close your spellbook and pack up your scribe tools]~
            EXIT
END

IF ~~
THEN BEGIN bz_caster_craft_arcane_circle_5
    SAY ~Which spell do you examine?~
        IF ~~
        THEN REPLY ~[Pick another spell circle]~
            GOTO bz_caster_craft_arcane_qualified
        IF ~~
        THEN REPLY ~[Close your spellbook and pack up your scribe tools]~
            EXIT
END

IF ~~
THEN BEGIN bz_caster_craft_arcane_circle_6
    SAY ~Which spell do you examine?~
        IF ~~
        THEN REPLY ~[Pick another spell circle]~
            GOTO bz_caster_craft_arcane_qualified
        IF ~~
        THEN REPLY ~[Close your spellbook and pack up your scribe tools]~
            EXIT
END

IF ~~
THEN BEGIN bz_caster_craft_arcane_circle_7
    SAY ~Which spell do you examine?~
        IF ~~
        THEN REPLY ~[Pick another spell circle]~
            GOTO bz_caster_craft_arcane_qualified
        IF ~~
        THEN REPLY ~[Close your spellbook and pack up your scribe tools]~
            EXIT
END

IF ~~
THEN BEGIN bz_caster_craft_arcane_circle_8
    SAY ~Which spell do you examine?~
        IF ~~
        THEN REPLY ~[Pick another spell circle]~
            GOTO bz_caster_craft_arcane_qualified
        IF ~~
        THEN REPLY ~[Close your spellbook and pack up your scribe tools]~
            EXIT
END

IF ~~
THEN BEGIN bz_caster_craft_arcane_circle_9
    SAY ~Which spell do you examine?~
        IF ~~
        THEN REPLY ~[Pick another spell circle]~
            GOTO bz_caster_craft_arcane_qualified
        IF ~~
        THEN REPLY ~[Close your spellbook and pack up your scribe tools]~
            EXIT
END

IF ~~
THEN BEGIN bz_caster_craft_arcane_circle_10
    SAY ~Which spell do you examine?~
        IF ~~
        THEN REPLY ~[Pick another spell circle]~
            GOTO bz_caster_craft_arcane_qualified
        IF ~~
        THEN REPLY ~[Close your spellbook and pack up your scribe tools]~
            EXIT
END