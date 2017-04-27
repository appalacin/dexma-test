class wsgi(
  $mysql_user = 'dexma-test',
	$mysql_db 	= 'dexma-test',
	$mysql_pass = 'passwordnohackeable',
	$mysql_host = 'localhost'
  )

{
# Setting config file to running app with apache/mod_wsgi
    file { '/opt/confs/flask.wsgi':
        ensure  => present,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template('wsgi/wsgi.script.erb'),

    }

}
