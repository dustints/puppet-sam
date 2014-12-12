# Install and Configure sam
#
# == Parameters:
#
# $config_dir::   Sam configuration dir
#                 default '/etc/foreman/settings.plugins.d'
#
# $config_file::  The Sam Configuration file
#                 default 'sam.yaml'
#
class sam (
  $config_file = $sam::params::config_file,
  $config_dir  = $sam::params::config_dir,
) inherits sam::params {

  class { 'sam::config':
  } ~>
  Class['sam']

}
