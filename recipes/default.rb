#
# Cookbook Name:: sai_nrpe
# Recipe:: default
#

package 'nagios-nrpe-server' do 
  notifies :restart, 'service[nagios-nrpe-server]'
end

file '/etc/nagios/nrpe.cfg' do
  content hash_to_s(node['sai_nrpe']['config'])
  notifies :reload, 'service[nagios-nrpe-server]'
end


service 'nagios-nrpe-server' do
  supports \
    start: true, 
    stop: true, 
    restart: true,
    reload: true, 
    status: true
  action [:enable, :start]
end