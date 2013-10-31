return if skip_unsupported_platform

case node['platform']
when "debian", "ubuntu"
  include_recipe "sublime_text-crate::default_linux"
when "mac_os_x"
  include_recipe "sublime_text-crate::default_mac_os_x"
end
