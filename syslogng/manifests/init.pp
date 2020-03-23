class syslogng {

  package {'syslog-ng':
    ensure => present,
  }

  file {'/etc/syslog-ng/syslog-ng.conf':
    source => 'puppet:///modules/syslogng/syslog-ng.conf',
    notify => Service['syslog-ng'],
  }

  service {'syslog-ng':
    ensure => running,
    require => Package['syslog-ng'],
  }
}
