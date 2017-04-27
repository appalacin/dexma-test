class core(){

	#App Folders
	file { '/opt/apps':
		ensure 	=> directory,
		owner	=> 'root',
		group 	=> 'root',
		mode	=> '0755'
	}->
	file { '/opt/apps/dexma-test':
		ensure 	=> directory,
		owner	=> 'root',
		group 	=> 'root',
		mode	=> '0755'
	}

	file { '/opt/confs':
		ensure => directory,
		owner  => 'root',
		group  => 'root',
		mode   => '0755',
	}

	# MySQL Base install
	class { '::mysql::server':
  		root_password           => 'PasswordNinjaSiMeMirasMueres',
  		remove_default_accounts => true,
  	}

	# Apache Base install
	class { 'apache':
  default_vhost => false,
  }

  # Install packages apt & pip
	$packages = ["git", "python", "python-dev", "build-essential", "python-pip" ]
	$pip = ["flask", "flask-mysql"]


	package { $packages:
		ensure => present,

	}

	package { $pip:
		ensure 		=> installed,
		provider	=> pip,
	}
}
