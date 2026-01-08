#!/bin/bash
echo "Setup and configure server"

file_name=config.yaml

config_dir=$1

if [ -d "$config_dir" ]
then
	echo "reading config directory contents"
	config_files=$(ls "$config_dir")
else
	echo "config dir not found. creating one"
	mkdir "$config_dir"
	touch "${config_dir}"/"${file_name}"
fi

user_group=$2
echo "$user_group"

if [ "$user_group" == "nana" ]
then 
	echo "configure the server"
elif [ "$user_group" == "admin" ]
then
  echo "administrator the server"
else
	echo "no permission to configure server. wrong user group"
fi

echo "using file $file_name to configure something"
echo "here ate all configuration files: $config_files"

