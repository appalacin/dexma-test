class deploy::mysql(){

  	mysql::db { 'dexma-test':
  		user     => 'dexma-test',
  		password => 'passwordnohackeable',
  		host     => 'localhost',
  		sql		 => '/opt/apps/dexma-test/sql.sql',
  		grant    => ['ALL'],

	}
}
