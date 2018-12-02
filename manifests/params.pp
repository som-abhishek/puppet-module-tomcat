class tomcat::params {

    $user   =   'tomcat'
    $group  =   'tomcat'
    $config_path =   '/etc/tomcat/tomcat.conf'
    $packages   =   ['tomcat', 'tomcat-webapps']
    $service_name   =   'tomcat'
    $service_state  =   stopped
    $tomcat_catalina_pid    =   '/var/run/tomcat.pid'
    $shutdown_verbose   =   'false'
    $shutdown_wait  =   '30'
    $security_manager   =   'false'
    $catalina_base  =   '/usr/share/tomcat'
    $catalina_home  =   '/usr/share/tomcat'
    $jasper_home    =   '/usr/share/tomcat'
    $catalina_tmp_dir   =   '/var/cache/tomcat/temp'
    $java_home  =   '/usr/lib/jvm/jre'
    $tomcat_cfg_loaded = '1'
    $tomcat_user    =   'tomcat'
    $deploy_path    =   '/var/lib/tomcat/webapps/'
    
    
}