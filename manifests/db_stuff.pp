class wp_module::db_stuff inherits wp_module {

class { 'mysql::server':
  root_password           => 'rootpassword',
}

$dbname = "wordpress"
$dbuser = "wordpressuser"
$dbpwd = "password"
$dbhost = "localhost"


mysql::db { $dbname:
  user     => $dbuser,
  password => $dbpwd,
  host     => $dbhost,
  grant    => ['ALL'],
  before => File['/var/www/html/wordpress/wp-config.php'],
}

}
