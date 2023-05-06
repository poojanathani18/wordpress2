
class wp_module {



include wp_module::update
include wp_module::install_run_apache
include wp_module::install_other
include wp_module::db_stuff

$dbname = $wp_module::db_stuff::dbname
$dbuser = $wp_module::db_stuff::dbuser
$dbpwd = $wp_module::db_stuff::dbpwd
$dbhost = $wp_module::db_stuff::dbhost

include wp_module::wp_stuff
include wp_module::restart_apache
}
