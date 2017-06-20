class httpd {
	package { 'httpd':
		ensure => absent,
	}
	file { '/tmp/test.txt':
		ensure => present,
		mode => '644',
		owner => 'harini',
		source => 'puppet:///modules/httpd/copytext.txt',
	}
}
