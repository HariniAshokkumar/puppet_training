class web{
	package {'httpd':
		ensure => installed,
	}
	service {'httpd':
		ensure => running,
		require => Package['httpd'],
	}
}
