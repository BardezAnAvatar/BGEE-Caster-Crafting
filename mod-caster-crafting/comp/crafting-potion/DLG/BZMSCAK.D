BEGIN ~BZMSCAK~

    //If you are in combat or see enemies, no usability
    IF
        ~OR(2)
    ActuallyInCombat()
Detect([ENEMY])~
    THEN BEGIN bz_potion_brew_enemies
        SAY @30001  //You cannot use your alchemy kit while enemies are about.
            IF ~~ THEN EXIT
    END

    IF
        ~!ActuallyInCombat()
!Detect([ENEMY])~
    THEN BEGIN bz_potion_brew_main_menu
        SAY @30000  //Your alchemy kit is open before you. How do you wish to use it?

            //Quit
            IF ~~
                THEN REPLY @30020 //Pack up your alchemy station
                    EXIT
    END
