node default {

  exec { 'apt-update':
      command => '/usr/bin/apt-get update',
  }


	# Creating folders & installing sofware necessary
	include core

	# Download files from repo dexma-devops-test & configuring apps (Apache/MySQL)
	include deploy

	# Config script to run app
	include wsgi

}
