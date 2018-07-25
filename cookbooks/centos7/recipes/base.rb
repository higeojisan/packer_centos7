template '/etc/cloud/cloud.cfg' do
  source 'etc/cloud/cloud.cfg'
  owner  'root'
  group  'root'
  mode   '0644'
end

template '/etc/selinux/config' do
  source 'etc/selinux/config'
  owner  'root'
  group  'root'
  mode   '0644'
end

%w(
tuned.service
rpcbind.service
).each do |unit|
  systemd_unit unit do
    action :disable
  end
end
