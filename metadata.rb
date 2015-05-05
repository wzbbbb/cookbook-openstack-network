# Encoding: utf-8

name              'openstack-network'
maintainer        'Jay Pipes <jaypipes@gmail.com>'
license           'Apache 2.0'
description       'Installs and configures the OpenStack Network API Service and various agents and plugins'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '9.1.3'
recipe            'openstack-network::client', 'Install packages required for network client'
recipe            'openstack-network::server', 'Installs packages required for a OpenStack Network server'
recipe            'openstack-network::openvswitch', 'Installs packages required for OVS'
recipe            'openstack-network::metadata_agent', 'Installs packages required for a OpenStack Network Metadata Agent'
recipe            'openstack-network::identity_registration', 'Registers OpenStack Network endpoints and service user with Keystone'

%w{ ubuntu fedora redhat centos suse }.each do |os|
  supports os
end

depends           'openstack-identity', '~> 9.0'
depends           'openstack-common', '~> 9.5'
