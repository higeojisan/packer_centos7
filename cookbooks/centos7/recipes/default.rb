#
# Cookbook:: centons7
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'centos7::base'
include_recipe 'centos7::chrony'
include_recipe 'centos7::basic_package'
include_recipe 'centos7::awscli'
include_recipe 'centos7::localtime'
include_recipe 'centos7::bash_profiles'
include_recipe 'centos7::ssm'
include_recipe 'centos7::sysdig'
include_recipe 'centos7::disable-thp'
include_recipe 'centos7::rpsrfs'
include_recipe 'centos7::sysctl'
