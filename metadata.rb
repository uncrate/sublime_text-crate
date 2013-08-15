name             'sublime_text-crate'
maintainer       'John Leacox'
license          'Apache 2.0'
description      'Installs/Configures sublime text'
version          '0.1.0'

%w{
  debian
  ubuntu
  centos
  redhat
}.each do |os|
  supports os
end

depends 'uncrate_base'
depends 'gdebi'