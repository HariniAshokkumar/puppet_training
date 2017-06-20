node 'default'{}

node 'client.dns.com'{
	cron { 'Backup images':
		command => '/usr/bin/rsync -az /var/www/pictures /pictures-backup/',
		hour => '04',
		minute => '00',
	}
}
