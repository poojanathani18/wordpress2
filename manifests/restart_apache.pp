class wp_module::restart_apache inherits wp_module{
exec { "/bin/systemctl restart apache2" :
}                                                                                                                                
}
