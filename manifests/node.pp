define script_job(){
        file {"/usr/local/bin/${name}":
                source => "puppet:///modules/definition/${name}",
                mode => '0755',
        }
        cron {"Run ${name}":
                command => "usr/local/bin/${name}",
        }
}


node 'client.dns.com'{
	script_job { 'hi.sh':
	}
}
