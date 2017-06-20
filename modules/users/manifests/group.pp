class users::group{
	group {'cartoon':
		ensure => present,
		gid => 1009,
	}
}
