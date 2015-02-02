# class systems::yum
class systems::yum (
  $yum_presto = true,
) {
  validate_bool( $yum_presto )

  $ensure_yum_presto = $yum_presto ? {
    true  => 'present',
    false => 'absent',
  }

  package { 'yum-presto':
    ensure => $ensure_yum_presto,
  } ->

  class { '::epel': } ->

  class { '::puppetlabs_yum': } ->

  class { '::yum_cron': }

}
