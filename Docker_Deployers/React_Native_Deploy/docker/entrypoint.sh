#!/bin/bash

APP_DIR="/app"
PROJECT_NAME="my-app"
PROJECT_PATH="$APP_DIR/$PROJECT_NAME"

cd $APP_DIR

if [ ! -d "$PROJECT_PATH" ]; then
  echo "Proyecto no encontrado. Creando $PROJECT_NAME..."
  npx --yes create-expo-app $PROJECT_NAME --template blank
  cd $PROJECT_NAME
  npm install
else
  echo "Proyecto encontrado. Iniciando Expo..."
  cd $PROJECT_NAME
fi

chown -R 1000:www-data .

exec npx expo start --lan --clear

