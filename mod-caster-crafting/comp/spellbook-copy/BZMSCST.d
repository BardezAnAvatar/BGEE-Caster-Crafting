APPEND ~BZMSCST~
    IF ~~
    THEN BEGIN bz_caster_craft_scribe_copy_menu
        SAY @15070 //Whose spellbook do you copy spells from?

            //NOTE: I will prepend responses/transitions to this state elsewhere, to programmatically
            //  use the same string as a basis for merging the text together.

            IF ~~
            THEN REPLY @15031 //Go back to your scribe tools.
                GOTO bz_caster_craft_scribe_main_menu

            IF ~~
            THEN REPLY @15030 //Pack up your scribe tools.
                EXIT

    END

END


