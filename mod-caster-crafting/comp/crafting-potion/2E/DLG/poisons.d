
APPEND ~BZMSCAK~

    IF ~~
    THEN BEGIN bz_potion_brew_poison
        SAY @30043  //~Which potion do you wish to brew?~
            //Dynamic list of the potion registry for transitions

            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

END
