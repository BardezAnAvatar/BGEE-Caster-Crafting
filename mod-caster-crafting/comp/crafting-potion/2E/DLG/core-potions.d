
APPEND ~BZMSCAK~
    IF ~~
    THEN BEGIN bz_potion_brew_core_defense
        SAY @30043  //~Which potion do you wish to brew?~
            //Dynamic list of the potion registry for transitions

            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_core_enhancement
        SAY @30043  //~Which potion do you wish to brew?~
            //Dynamic list of the potion registry for transitions

            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_core_cure
        SAY @30043  //~Which potion do you wish to brew?~
            //Dynamic list of the potion registry for transitions

            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_core_bomb
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
