#!/bin/bash
git add *
git commit --all -m "adding director"
git push
git push heroku master
heroku open