#!/bin/sh
#Pre-requisite package/application. git, wget.
#Permissions
user=
group=
#Wordpress install variables
wp_directory=~/www
wp_target=$wp_directory/latest.tar.gz
wp_url=https://wordpress.org/latest.tar.gz
#Plugin Variables and themes
wp_plugin_repo=https://github.com/thruthesky/xforum.git
wp_theme_repo=
#download wordpress
mkdir $wp_directory
wget -O $wp_target $wp_url
tar -xpf $wp_target -C $wp_directory
mv $wp_directory/wordpress/* $wp_directory/
rm -f $wp_target
rmdir $wp_directory/wordpress

#clone the plugin
cd $wp_directory/wp-content/plugins
git clone $wp_plugin_repo
cd ~
#clone themes
cd $wp_directory/wp-content/themes
git clone $wp_plugin_repo
cd ~

chmod 755 -R $wp_directory/
chown $user:$group -R
