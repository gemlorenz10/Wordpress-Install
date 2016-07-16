#!/bin/sh
#Pre-requisite package/application. git, wget,
target_dir=
WP_url=https://wordpress.org/latest.tar.gz
plugin_repo=
#download wordpress
wget -P $target_dir $source_url
#clone the repo
git clone $plugin_repo