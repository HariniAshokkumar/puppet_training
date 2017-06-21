node 'default'{}

node 'client.dns.com'{
	include web
	$site_name = 'google'
	$site_domain = 'google.com'
	file { '/etc/httpd/conf.d/google.conf':
		content => template('web/httpd.erb','web/httpd1.erb'),
		notify => Service['httpd'],
	}
	file { '/var/www/google':
		ensure => directory,
		owner => root,
		group => root,
	}
	file { '/var/www/google/index.html':
		ensure => present,
		content => 'Hello world!',
	}
}
