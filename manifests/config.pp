# Configuration for Candlepin
class sam::config(
  $config_dir  = $::sam::config_dir,
  $config_file = $::sam::config_file
) {
  file{$sam::plugins_config_dir:
    ensure => directory,
  } ~>
  file{"${::sam::config_dir}/${config_file}":
    ensure  => present,
    content => template('sam/sam.yaml.erb'),
  }

}
