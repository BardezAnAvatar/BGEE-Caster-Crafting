BEGIN ~BZMSCSC~
    
    //If you are in combat or see enemies, no usability
    IF
        ~OR(2)
    ActuallyInCombat()
    Detect([ENEMY])~
    THEN BEGIN bz_caster_craft_scribe_enemies
        SAY @15001  //You cannot use your scribe kit while enemies are about.
            IF ~~ THEN EXIT
    END

    IF
        ~!ActuallyInCombat()
!Detect([ENEMY])~
    THEN BEGIN bz_caster_craft_scribe_main_menu
        SAY @15000  //Your scribing kit is open before you. How do you wish to use it?
            //Copy Spell: non-sorcerer mages
            IF ~!Class(MYSELF, SORCERER)
Class(MYSELF, MAGE_ALL)~
                THEN SAY @15011 //Copy a spell into your spellbook from one of your companions.
                    GOTO bz_caster_craft_scribe_copy_menu
            //Copy Spell: bards
            IF ~Class(MYSELF, BARD)~
                THEN SAY @15011 //Copy a spell into your spellbook from one of your companions.
                    GOTO bz_caster_craft_scribe_copy_menu

            //Scribe scroll: Cleric/Druid
            IF ~OR(2)
    Class(MYSELF, CLERIC_ALL)
    Class(MYSELF, DRUID_ALL)
LevelGT(MYSELF, 6)~
                THEN SAY @15010 //scribe a scroll
                    GOTO bz_caster_craft_scribe_scroll_menu

            //Scribe scroll: Mages
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
Class(MYSELF, MAGE_ALL)
LevelGT(MYSELF, 8)~
                THEN SAY @15010 //scribe a scroll
                    GOTO bz_caster_craft_scribe_scroll_menu
            
            //Scribe scroll: Bard
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
!Class(MYSELF, MAGE_ALL)
Class(MYSELF, BARD_ALL)
LevelGT(MYSELF, 9)~ 
                THEN SAY @15010 //scribe a scroll
                    GOTO bz_caster_craft_scribe_scroll_menu

            //Scribe scroll: Ranger
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
!Class(MYSELF, MAGE_ALL)
!Class(MYSELF, BARD_ALL)
Class(MYSELF, RANGER_ALL)
LevelGT(MYSELF, 11)~
                THEN SAY @15010 //scribe a scroll
                    GOTO bz_caster_craft_scribe_scroll_menu

            //Scribe scroll: Paladin
            IF ~!Class(MYSELF, CLERIC_ALL)
!Class(MYSELF, DRUID_ALL)
!Class(MYSELF, MAGE_ALL)
!Class(MYSELF, BARD_ALL)
!Class(MYSELF, RANGER_ALL)
Class(MYSELF, PALADIN_ALL)
LevelGT(MYSELF, 14)~
                THEN SAY @15010 //scribe a scroll
                    GOTO bz_caster_craft_scribe_scroll_menu

            //Quit
            IF ~~ 
                THEN SAY @15030 //Pack up
                    EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_scroll_menu
        SAY @15040
            /*
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
            */
            IF ~~
            THEN REPLY @15031 //Go back to your scribe tools.
                GOTO bz_caster_craft_scribe_main_menu

            IF ~~
            THEN REPLY @15030 //Pack up your scribe tools.
                EXIT
    END

    IF ~~
    THEN BEGIN bz_caster_craft_scribe_copy_menu
        SAY @15070 //Whose spellbook do you copy spells from?

            //TODO: I need to append to this state elsewhere, to programmatically
            //  use the same string as a basis for merging the text together.

            IF ~~
            THEN REPLY @15031 //Go back to your scribe tools.
                GOTO bz_caster_craft_scribe_main_menu

            IF ~~
            THEN REPLY @15030 //Pack up your scribe tools.
                EXIT

    //TODO: move this into a script-appended mutation, since the triggers and such must mutate.
    /*
    IF ~~
    THEN BEGIN bz_caster_craft_scribe_copy_player1
        SAY @15040 //Which spell circle do you explore?

            //TODO: write out the 10 circles, link dynamically to PlayerN in the target state name

            IF ~~
            THEN REPLY @15071 //Look at someone else's spellbook.
                GOTO bz_caster_craft_scribe_copy_menu

            IF ~~
            THEN REPLY @15031 //Go back to your scribe tools.
                GOTO bz_caster_craft_scribe_main_menu

            IF ~~
            THEN REPLY @15030 //Pack up your scribe tools.
                EXIT
    END
    */

END
