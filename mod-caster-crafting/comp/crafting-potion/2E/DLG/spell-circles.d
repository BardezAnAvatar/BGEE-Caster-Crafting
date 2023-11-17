
APPEND ~BZMSCST~
    IF ~~
    THEN BEGIN bz_potion_brew_arcane
        SAY @30041  //~Which spell circle do you explore?~
            IF ~~
            THEN REPLY @30061 //1st arcane circle
                GOTO bz_potion_brew_arcane_circle_1
            IF ~~
            THEN REPLY @30062 //2nd arcane circle
                GOTO bz_potion_brew_arcane_circle_2
            IF ~~
            THEN REPLY @30063 //3rd arcane circle
                GOTO bz_potion_brew_arcane_circle_3
            IF ~~
            THEN REPLY @30064 //4th arcane circle
                GOTO bz_potion_brew_arcane_circle_4
            IF ~~
            THEN REPLY @30065 //5th arcane circle
                GOTO bz_potion_brew_arcane_circle_5
            IF ~~
            THEN REPLY @30066 //6th arcane circle
                GOTO bz_potion_brew_arcane_circle_6
            IF ~~
            THEN REPLY @30067 //7th arcane circle
                GOTO bz_potion_brew_arcane_circle_7
            IF ~~
            THEN REPLY @30068 //8th arcane circle
                GOTO bz_potion_brew_arcane_circle_8
            IF ~~
            THEN REPLY @30069 //9th arcane circle
                GOTO bz_potion_brew_arcane_circle_9
            IF ~~
            THEN REPLY @30070 //10th arcane circle
                GOTO bz_potion_brew_arcane_circle_A

            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END


    IF ~~
    THEN BEGIN bz_potion_brew_divine
        SAY @30041  //~Which spell circle do you explore?~
            IF ~~
            THEN REPLY @30071 //1st divine circle
                GOTO bz_potion_brew_divine_circle_1
            IF ~~
            THEN REPLY @30072 //2nd divine circle
                GOTO bz_potion_brew_divine_circle_2
            IF ~~
            THEN REPLY @30073 //3rd divine circle
                GOTO bz_potion_brew_divine_circle_3
            IF ~~
            THEN REPLY @30074 //4th divine circle
                GOTO bz_potion_brew_divine_circle_4
            IF ~~
            THEN REPLY @30075 //5th divine circle
                GOTO bz_potion_brew_divine_circle_5
            IF ~~
            THEN REPLY @30076 //6th divine circle
                GOTO bz_potion_brew_divine_circle_6
            IF ~~
            THEN REPLY @30077 //7th divine circle
                GOTO bz_potion_brew_divine_circle_7
            IF ~~
            THEN REPLY @30078 //Quest divine spells
                GOTO bz_potion_brew_divine_circle_Q

            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END


    IF ~~
    THEN BEGIN bz_potion_brew_arcane_circle_1
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_arcane
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_arcane_circle_2
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_arcane
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_arcane_circle_3
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_arcane
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_arcane_circle_4
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_arcane
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_arcane_circle_5
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_arcane
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_arcane_circle_6
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_arcane
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_arcane_circle_7
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_arcane
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_arcane_circle_8
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_arcane
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_arcane_circle_9
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_arcane
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_arcane_circle_A
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_arcane
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END





    IF ~~
    THEN BEGIN bz_potion_brew_divine_circle_1
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_divine
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_divine_circle_2
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_divine
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_divine_circle_3
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_divine
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_divine_circle_4
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_divine
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_divine_circle_5
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_divine
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_divine_circle_6
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_divine
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_divine_circle_7
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_divine
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

    IF ~~
    THEN BEGIN bz_potion_brew_divine_circle_Q
        SAY @30042 // ~Which spell do you examine?~
            IF ~~
            THEN REPLY @30022 //~[Pick another spell circle]~
                GOTO bz_potion_brew_divine
            IF ~~
            THEN REPLY @30025 // ~Pick another type of potion.~
                GOTO bz_potion_brew_category_menu
            IF ~~
            THEN REPLY @30020 //Pack up your alchemy station
                EXIT
    END

END
