# bash_profiles
template '/etc/profile.d/prompt.sh' do
  source 'etc/profile.d/prompt.sh.erb'
  owner  'root'
  group  'root'
  mode   '0644'
end

template '/etc/profile.d/_ec2_env.sh' do
  source 'etc/profile.d/_ec2_env.sh.erb'
  owner  'root'
  group  'root'
  mode   '0644'
end

template "/etc/profile.d/login_info.sh" do
  source 'etc/profile.d/login_info.sh.erb'
  owner  'root'
  group  'root'
  mode   '0644'
end
