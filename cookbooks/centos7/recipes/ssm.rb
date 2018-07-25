execute 'install ssm-agent' do
  command "yum install -y https://amazon-ssm-#{node['ec2']['placement_availability_zone'].chop}.s3.amazonaws.com/latest/linux_amd64/amazon-ssm-agent.rpm"
  not_if 'rpm -q amazon-ssm-agent'
end

execute 'start ssm-agent' do
  action :run
  command 'systemctl satrt amazon-ssm-agent.service'
  not_if 'systemctl status amazon-ssm-agent.service | grep running'
end
