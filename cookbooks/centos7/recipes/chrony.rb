systemd_unit 'chronyd.service' do
  action :enable
end

template '/etc/chrony.conf' do
  source 'etc/chrony.conf'
  owner  'root'
  group  'root'
  mode   '0644'
end
