class users {
	user {'tom':
		ensure => present,
		managehome => true,
		password => '$1$NS7OhhV5$x4s6xnRrbTRKfwwWom.sy/',
		groups => 'cartoon',
	}
}
