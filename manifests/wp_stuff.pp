class wp_module::wp_stuff  inherits  wp_module{

archive { '/tmp/latest.zip':
  source        => 'puppet:///modules/wp_module/latest.zip',
  extract       => true,
  extract_path  => '/var/www/html/',
  cleanup       => false,  # keep the file on the server
  creates => "/var/www/html/wordpress/index.php",
}

file  { '/var/www/html/wordpress/wp-config-sample.php':
          ensure => absent,
require => Archive['/tmp/latest.zip'],
}


file { '/var/www/html/wordpress/wp-config.php':
          ensure => present,
#source => "puppet:///modules/wp_module/wp-config-sample.php",
content => template('wp_module/wp-config-sample.php.erb'),
require => Archive['/tmp/latest.zip'],
}

file { '/var/www/html/wordpress':
          mode => '775',
          owner => 'www-data',
          group => 'www-data',
          recurse => true,
}
}

