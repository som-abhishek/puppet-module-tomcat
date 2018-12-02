class tomcat(
    $user					=   $tomcat::params::user,
    $group  				=   $tomcat::params::group,
    $config_path 			=   $tomcat::params::config_path,
    $packages   			=   $tomcat::params::packages,
    $service_name   		=   $tomcat::params::service_name,
    $service_state  		=   $tomcat::params::service_state,
    $tomcat_catalina_pid	=   $tomcat::params::tomcat_catalina_pid,
    $shutdown_verbose   	=   $tomcat::params::shutdown_verbose,
    $shutdown_wait  		=   $tomcat::params::shutdown_wait,
    $security_manager   	=   $tomcat::params::security_manager,
    $catalina_base  		=   $tomcat::params::catalina_base,
    $catalina_home  		=   $tomcat::params::catalina_home,
    $jasper_home    		=   $tomcat::params::jasper_home,
    $catalina_tmp_dir   	=   $tomcat::params::catalina_tmp_dir,
    $java_home  			=   $tomcat::params::java_home,
    $tomcat_cfg_loaded 		=   $tomcat::params::tomcat_cfg_loaded,
    $tomcat_user    		=   $tomcat::params::tomcat_user

) inherits tomcat::params {

    include java::install
    include tomcat::install
    include tomcat::config
    include tomcat::service


}
