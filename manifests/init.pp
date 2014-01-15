class rvm(
  $version     = undef,
  $install_rvm = true,
  $http_proxy  = '',
) {

  if $install_rvm {
    class { 'rvm::dependencies':}
    class { 'rvm::system': version => $version, http_proxy => $http_proxy; }
    Class['rvm::dependencies']->Class['rvm::system']
  }
}
