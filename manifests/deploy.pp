define tomcat::deploy(
 $deploy_path   =   $::tomcat::deploy_path,
 $deploy_url,
 
){
    file{"${deploy_path}/${name}.war":
        source  =>  "${deploy_url}",
        owner   =>  $::tomcat::user,
        group   =>  $::tomcat::group,
        notify  =>  Exec['purge_context'],
        
    
    }
    
    exec{"purge_context":
        refreshonly =>  true,
        path    => ['/usr/bin', '/usr/sbin','/bin/'],
        command     =>  "rm -rf ${deploy_path}/${name}",
        notify      =>  Service[$::tomcat::service_name]
    
    }

}
