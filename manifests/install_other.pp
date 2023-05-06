class wp_module::install_other inherits wp_module{
$packagenames = ['unzip','php', 'libapache2-mod-php', 'php-mysql']
$packagenames.each |String $pkg| {
  package {"${pkg}":
    ensure => latest,
  }
}
}
