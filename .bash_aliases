#!/bin/bash

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd..="cd .."

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

alias :q="exit"
alias c="clear"
alias ch="history -c && > ~/.bash_history"
alias e="vim --"
alias g="git"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ll="ls -l"
alias l='tree --dirsfirst -ChFupDaLg 1'
alias m="man"
alias map="xargs -n1"
alias n="npm"
alias path='printf "%b\n" "${PATH//:/\\n}"'
alias q="exit"
alias t="tmux"
alias rehash="source ~/.zshrc"
alias hgrep='history | grep'
alias d="docker "
alias k="kubectl "

# Gradle

alias gc="gradle clean"
alias gt="gradle test"
alias gb="gc build"
alias ge="gc cleanEclipse eclipse"
alias gwb="./gradlew clean build"
alias gwe="./gradlew clean cleanEclipse eclipse"

# Network utils
alias network.ports='netstat -a -n | grep -i "LISTEN "'
alias network.connections='lsof -l -i +L -R -V'
alias network.established='lsof -l -i +L -R -V | grep ESTABLISHED'

alias cassandra="cassandra $1"
alias mongo="mongo $1"

#Docker
alias dstop='docker stop $(docker ps -aq)'
alias drm='docker rm -v  $(docker ps -aq)'
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias drmi="docker rmi $(docker images -q)"
alias dcass="docker container run -d --rm -p 9042:9042 -p 7000:7000 --name cassandra -v cassandra:/var/lib/cassandra cassandra:3.11"
alias dkafka="docker container run -d -p 2181:2181 -p 9092:9092 -e ADVERTISED_HOST=$(ipconfig getifaddr en1) -e ADVERTISED_PORT=9092 -e KAFKA_ADVERTISED_HOST_NAME=$(ipconfig getifaddr en1) --rm --name kafka spotify/kafka"
alias dmongo="docker container run -d --rm -p 27017:27017 --name mongo -v mongo:/data/db mongo:4.0.20"
alias dmysql='d run --rm -d --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=true -v mysql:/var/lib/mysql -p 3306:3306 mysql:8.0.31'
