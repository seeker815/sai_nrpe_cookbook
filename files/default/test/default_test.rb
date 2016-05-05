require 'minitest/spec'

def command_succeeds?(string)
  `#{string}`
  $?.exitstatus == 0
end


describe_recipe 'default' do
 it 'has nrpe package installed' do
    assert(command_succeeds?("dpkg -s nagios-nrpe-server"))
  end

  it 'has nagios-nrpe-server started' do
    assert(command_succeeds?("service nagios-nrpe-server status"))
  end

  it 'has /etc/nagios/nrpe.cfg exists and has allowed_hosts' do
    assert(command_succeeds?("grep allowed_hosts /etc/nagios/nrpe.cfg"))
  end
end