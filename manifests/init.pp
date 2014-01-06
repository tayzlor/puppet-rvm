class rvm($version=undef, $install_rvm=true) {

  if $install_rvm {
    class { 'rvm::dependencies':}
    class { 'rvm::system': version => $version; }
    Class['rvm::dependencies']->Class['rvm::system']
  }
}
