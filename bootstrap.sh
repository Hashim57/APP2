#! /usr/bin/bash

function bootstrap() {
    mkdir "$1"
    cd "$1"
    mkdir src tests
    cd src
    mkdir core
    cd app2.py
    mkdir app2
    cd ..
    python3 -m venv .venv
    git init
    touch .gitignore
    echo "__pycache" >> ./.gitignore
    echo ".venv" >> ./.gitignore
    echo ".vscode" >> ./.gitignore
    echo ".idea" >> ./.gitignore
    echo "*.txt" >> ./.gitignore
    echo "*.csv" >> ./.gitignore
    echo ".env" >> ./.gitignore
    git add .
    git commit -m "bootstrap"
    cd "$1"
}

# if [[ -d "$1" ]]; then
#     echo "Project Alreday Exists"
# else
bootstrap $1
# fi 

# exit 