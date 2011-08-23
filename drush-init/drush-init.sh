#!/bin/bash
 
# Download Drush v3 from D.O and make it work on `drush` (OS X / Linux / *nix)
# quickly put together by stemount, adapted by KarenS
 
# move to home dir
cd ~
# remove current drush (if existent)
rm -rf ~/.drush/
# create drush directory (and hide it)
mkdir ~/.drush/
# move to new dir
cd ~/.drush/
# get Drush
curl -C - -O http://ftp.drupal.org/files/projects/drush-7.x-4.5.tar.gz
# extract Drush
tar -xf drush*.tar.gz
# bin Drush tar
rm -f drush*.tar.gz

# get Pear Console Table library
#cd drush/includes
#curl -C - -O http://download.pear.php.net/package/Console_Table-1.1.3.tgz
# extract Pear
#tar -xf Console_Table*.tgz
# copy the file we need
#cp Console_Table-1.1.3/Table.php table.inc
# bin Console_Table tar
#rm -r Console_Table-1.1.3
#rm -f Console_Table*.tgz

# get Drush Make
# cd ..
cd drush/commands
curl -C - -O http://ftp.drupal.org/files/projects/drush_make-6.x-2.3.tar.gz
# extract Drush Make
tar -xf drush*.tar.gz
# bin Drush tar
rm -f drush_make*.tar.gz

# # get Provision
# curl -C - -O http://ftp.drupal.org/files/projects/provision-6.x-0.3.tar.gz
# # extract Provision
# tar -xf provision*.tar.gz
# # bin Provision tar
# rm -f provision*.tar.gz

# make drush command executable
cd ~
chmod u+x .drush/drush/drush

# alias drush and put in bash profile
touch ~/.bash_profile
echo "alias drush='~/.drush/drush/drush'" >> ~/.bash_profile

# add symbolic link to drush files so they are executable anywhere
# rm /usr/bin/drush
# ln -s ~/.drush/drush/drush /usr/bin/drush