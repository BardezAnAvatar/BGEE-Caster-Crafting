BEGIN ~BZMSCST~

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
    THEN BEGIN ~bz_caster_craft-scribe-main_menu~
        SAY @15000  //Your scribing kit is open before you. How do you wish to use it?

            //Quit
            IF ~~
                THEN REPLY @15020 //Pack up
                    EXIT
    END

