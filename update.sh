#!/bin/bash
echo -e "Starting to update gitHub\n"

#copy data we're interested in to other place
cp -R *.png $HOME/output

#go to home and setup git
cd $HOME
git config --global user.email "jbruel#travis@gmail.com"
git config --global user.name "Jean-Michel Bruel"
git config --global push.default simple

#using token clone io pages branch
git clone --quiet https://github.com/jmbruel/basics.git travis > /dev/null

#go into directory and copy data we're interested in to that directory
cd travis
cp $HOME/output/*.png .
ls -al 

#add, commit and push files without provoking Continuous Integration
git add *.png
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to basics repository -- [skip ci]"
git push -fq origin master > /dev/null

echo -e "Done magic with output\n"

