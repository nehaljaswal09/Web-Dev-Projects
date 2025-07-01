@echo off
title Updating GuessGame Submodule...

echo [ Pulling latest Guess-game changes... ]
cd GuessGame
git pull origin main
cd ..

echo [ Rebasing local repo with origin... ]
git pull origin main --rebase

echo [ ✅ Pulled. Now committing updated submodule... ]
git add GuessGame
git commit -m "Update: Pulled latest Guess-game changes"

echo [ Pushing to GitHub... ]
git push origin main

echo [ ✅ All Done! Submodule updated & pushed to GitHub ]
pause
