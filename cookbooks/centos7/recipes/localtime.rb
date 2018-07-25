execute "change-zoneinfo" do
  user "root"
  command "sudo timedatectl set-timezone #{node['localtime']['zone']}"
end
