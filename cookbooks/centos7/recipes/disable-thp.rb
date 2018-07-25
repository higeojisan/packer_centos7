%w(
/opt/misc
/opt/misc/bin
).each do |path|
  directory path do
    action :create
    group  "root"
    owner  "root"
    mode   "755"
  end
end

template "/opt/misc/bin/disable-thp" do
  source "opt/misc/bin/disable-thp"
  owner  "root"
  group  "root"
  mode   "0755"
end

template "/etc/systemd/system/disable-thp.service" do
  source "etc/systemd/system/disable-thp.service"
  owner  "root"
  group  "root"
  mode   "0644"
end

service "disable-thp" do
  action :enable
end
