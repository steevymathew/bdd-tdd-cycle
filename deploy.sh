#!/bin/bash
git add *
git commit --all -m "finishing setup"
git push
git push heroku master
heroku open