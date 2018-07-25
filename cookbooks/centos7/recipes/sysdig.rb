execute 'curl -s https://s3.amazonaws.com/download.draios.com/stable/install-sysdig | bash' do
  action :run
  not_if 'rpm -qa | grep sysdig'
end
