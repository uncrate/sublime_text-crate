return if skip_unsupported_platform

include_recipe "dmg"

dmg_package "Sublime Text 2" do
  dmg_name "sublime_text"
  source node['sublime_text']['download_url_mac_os_x']
  checksum node['sublime_text']['checksum_mac_os_x']
  owner node['uncrate']['user']
  action :install
end

link "/usr/local/bin/#{node['sublime_text']['shortcut_name']}" do
  to "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
end
