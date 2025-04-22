#!/bin/bash

clear

show_mysql_menu() {
    echo -e "\n"
    echo -e "             ______      ____             __           "
    echo -e "            / ____/___  / __ \___  ____  / /___  __  __"
    echo -e "           / __/ /_  / / / / / _ \/ __ \/ / __ \/ / / /"
    echo -e "          / /___  / /_/ /_/ /  __/ /_/ / / /_/ / /_/ / "
    echo -e "         /_____/ /___/_____/\___/ .___/_/\____/\__, /  "
    echo -e "                               /_/            /____/  \n "
    echo -e "       What MariaDb environment do you want to deploy?"
    echo -e "       
            1. Complete Flask Environment (MariaDB and phpMyAdmin).
            2. Only MariaDB.
            3. Back.
            4. Exit EzDeploy.
        "
    echo -n "       Select a number: "
    read userInput

    if [ "$userInput" -eq 1 ]; then
        cd ./Docker_Deployers/MariaDB_Deploy/MariaDB_PHP
        docker-compose up --build
    elif [ "$userInput" -eq 2 ]; then
        cd ./Docker_Deployers/MariaDB_Deploy/MariaDB_NoPHP
        docker-compose up --build
    elif [ "$userInput" -eq 3 ]; then
        clear
        show_menu
    else
        exit
    fi
}

show_menu() {
    echo -e "\n"
    echo -e "             ______      ____             __           "
    echo -e "            / ____/___  / __ \___  ____  / /___  __  __"
    echo -e "           / __/ /_  / / / / / _ \/ __ \/ / __ \/ / / /"
    echo -e "          / /___  / /_/ /_/ /  __/ /_/ / / /_/ / /_/ / "
    echo -e "         /_____/ /___/_____/\___/ .___/_/\____/\__, /  "
    echo -e "                               /_/            /____/   \n"
    echo -e "       This is the EzDeploy administrator."
    echo -e "       What do you want to deploy?"
    echo -e "       
            1. Complete Flask environment (Flask, MariaDB and phpMyAdmin).
            2. Complete PHP Laravel environment (Laravel, MySql and phpMyAdmin).
            3. React Native environment (Only for Linux).
            4. Only Flask.
            5. MariaDb.
            6. Clear all containers and images (including volumes).
            7. Exit EzDeploy.
    "
    echo -n "       Select a number: "
    read userInput

    if [ "$userInput" -eq 1 ]; then
        cd ./Docker_Deployers/Flask_All_Services
        docker-compose up --build
    elif [ "$userInput" -eq 2 ]; then
        cd ./Docker_Deployers/Laravel_Deploy
        mkdir ../../laravelApp
        docker-compose up --build
    elif [ "$userInput" -eq 3 ]; then
        cd ./Docker_Deployers/React_Native_Deploy
        mkdir ../../reactNativeApp
        docker-compose up --build
    elif [ "$userInput" -eq 4 ]; then
        cd ./Docker_Deployers/Only_Flask_Deploy
        docker-compose up --build
    elif [ "$userInput" -eq 5 ]; then
        clear
        show_mysql_menu
    elif [ "$userInput" -eq 6 ]; then
        docker system prune -af
    else
        exit
    fi
}

show_menu
