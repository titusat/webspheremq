#
# Cookbook:: webspheremq
# Recipe:: default

#include_recipe 'webspheremq::install_client_rhel' if rhel?
#
file '/tmp/test' do
  content 'Hello World'
  mode '0755'
  owner 'titus_alphonse_t'
  group 'titus_alphonse_t'
end

file "/etc/motd" do
  content "IP Address: #{node['ipaddress']}
Catch Phrase: #{node['catch_phrase']}
"
end
#
