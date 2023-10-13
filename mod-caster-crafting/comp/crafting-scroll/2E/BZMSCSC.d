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