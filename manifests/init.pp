class enterprise-dns {

  $dnsservers = hiera('dnsservers')

  file { '/opt/etc/resolv.conf':
    ensure => present,
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
