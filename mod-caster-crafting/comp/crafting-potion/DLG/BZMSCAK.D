BEGIN ~BZMSCAK~

    //If you are in combat or see enemies, no usability
    IF
        ~OR(2)
    ActuallyInCombat()
Detect([ENEMY])~
    THEN BEGIN ~bz-craftingkit-enemies~
        SAY @30001  //You cannot use your alchemy kit while enemies are about.
            IF ~~ THEN EXIT
    END

    IF
        ~!ActuallyInCombat()
!Detect([ENEMY])~
    THEN BEGIN ~bz-craftingkit-main_menu~
        SAY @30000  //Your alchemy kit is open before you. How do you wish to use it?

            //Quit
            IF ~~
                THEN REPLY @30020 //Pack up your alchemy station
                    EXIT
    END

    IF ~~
    THEN BEGIN ~bz-potion-main_menu~
        SAY @30040  //~What kind of potion do you wish to brew?~
            //Dynamic: Arcane/Divine/Various core ones depending on install otions

            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END
