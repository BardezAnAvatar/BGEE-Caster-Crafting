EXTEND_TOP ~BZMSCSC~ bz_caster_craft_scribe_main_menu    //Your scribing kit is open before you. How do you wish to use it?

            //Copy Spell: non-sorcerer mages
            IF ~!Class(MYSELF, SORCERER)
Class(MYSELF, MAGE_ALL)~
                THEN REPLY @15011 //Copy a spell into your spellbook from one of your companions.
                    GOTO bz_caster_craft_scribe_copy_menu
            //Copy Spell: bards
            IF ~Class(MYSELF, BARD)~
                THEN REPLY @15011 //Copy a spell into your spellbook from one of your companions.
                    GOTO bz_caster_craft_scribe_copy_menu

END


