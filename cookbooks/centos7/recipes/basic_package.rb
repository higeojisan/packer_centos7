# basic_package
execute "install epel-release" do
  user "root"
  command "yum install -y epel-release"
end

%w(
  kernel-devel
  git
  htop
  ack
  jq
  curl
  dstat
  nc
  vim
  psmisc
  sysstat
).each do |pkg|
    package pkg
end

