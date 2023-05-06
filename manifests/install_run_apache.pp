class wp_module::install_run_apache inherits wp_module {
package {"apache2":
ensure => latest,
}
service {"apache2":
ensure => running,
}
}
