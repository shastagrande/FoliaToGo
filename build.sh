#!/bin/sh

git clone -b dev/hard-fork --single-branch https://github.com/PaperMC/Folia
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
cd Folia
git submodule update --init --recursive
./gradlew applyAllPatches
./gradlew createMojmapPaperclipJar
