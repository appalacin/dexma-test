class deploy(
	$mysql_user = 'dexma-test',
	$mysql_db 	= 'dexma-test',
	$mysql_pass = 'passwordnohackeable',
	$mysql_host = 'localhost'
	)
{
		# Cloning repo dexma-devops-test
		vcsrepo { '/opt/apps/dexma-test':
		  ensure   => present,
		  provider => git,
		  source   => 'https://bitbucket.org/dexmatech/dexma-devops-test.git',
		}

		# Creating db (import sql)
		include deploy::mysql


		# Settings Apache/Vhost with wsgi
		include deploy::apache


		# Setting environment for the app
		file { '/etc/environment':
		content	=>	template("deploy/var_env.erb"),
		}


}
