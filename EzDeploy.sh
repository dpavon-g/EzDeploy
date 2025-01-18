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
            1. Complete environment (Flask, MariaDB and phpMyAdmin).
            2. Complete environment (Laravel, MySql and phpMyAdmin).
            3. Flask.
            4. MariaDb.
            5. Exit EzDeploy.
    "
    echo -n "       Select a number: "
    read userInput

    if [ "$userInput" -eq 1 ]; then
        cd ./Docker_Deployers/All_Services
        docker-compose up --build
    elif [ "$userInput" -eq 2 ]; then
        cd ./Docker_Deployers/Larave_All_Services
        docker-compose up --build
    elif [ "$userInput" -eq 3 ]; then
        cd ./Docker_Deployers/Flask_Deploy
        docker-compose up --build
    elif [ "$userInput" -eq 4 ]; then
        clear
        show_mysql_menu
    else
        exit
    fi
}

show_menu
