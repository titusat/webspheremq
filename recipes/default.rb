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
#
