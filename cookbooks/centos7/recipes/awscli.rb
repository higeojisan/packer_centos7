execute 'install pip' do
  user "root"
  command "yum install -y python-pip"
  not_if "rpm -q python2-pip"
end

execute 'upgrade pip' do
  user "root"
  command "pip install --upgrade pip"
end

execute 'install awscli' do
  user "root"
  command "pip install awscli --upgrade"
end
