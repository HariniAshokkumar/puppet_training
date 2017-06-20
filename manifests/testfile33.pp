class install {
	package {'httpd':
        ensure => installed,
        }
        service {'httpd':
        ensure => running,
        require => Package['httpd'],
        enable => true,
}
        Package {
allow_virtual => true,
}
}


node 'client.dns.com'{
	include httpd
}
node 'client2.dns.com'{
	include install
}
