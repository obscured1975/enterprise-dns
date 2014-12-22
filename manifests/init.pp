class enterprise_dns {

  $dnsserver1 = hiera('dnsserver1')
  $dnsserver2 = hiera('dnsserver2')

  file { '/opt/etc/resolv.conf':
    ensure => present,
    content => template('enterprise_dns/resolv.conf.erb'),
    require => File['/opt/etc'],
  }

  file { '/opt':
    ensure => directory,
  }

  file { '/opt/etc':
    ensure => directory,
    require => File['/opt'],
  }

}
