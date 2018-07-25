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

template "/opt/misc/bin/set-rpsrfs" do
  source "opt/misc/bin/set-rpsrfs"
  owner  "root"
  group  "root"
  mode   "0755"
end

template "/etc/systemd/system/set-rpsrfs.service" do
  source "etc/systemd/system/set-rpsrfs.service"
  owner  "root"
  group  "root"
  mode   "0644"
end

service "set-rpsrfs" do
  action :enable
end
