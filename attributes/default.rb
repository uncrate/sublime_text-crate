default['sublime_text']['download_url_64bit'] = "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2"
default['sublime_text']['checksum_64bit'] = "01baed30d66432e30002a309ff0393967be1daba5cce653e43bba6bd6c38ab84"
default['sublime_text']['download_url_32bit'] = 
default['sublime_text']['checksum_32bit'] =

default['sublime_text']['install_path']="/opt"
default['sublime_text']['install_dir']="sublime_text"

default['sublime_text']['name']="Sublime Text 2"
default['sublime_text']['shortcut_name']="sublime"


arch = node['kernel']['machine'] =~ /x86_64/ ? "x86_64" : "i386"

if arch == "x86_64"
  default['sublime_text']['download_url'] = node['sublime_text']['download_url_64bit']
  default['sublime_text']['checksum'] = node['sublime_text']['checksum_64bit']
else
  default['sublime_text']['download_url'] = node['sublime_text']['download_url_32bit']
  default['sublime_text']['checksum'] = node['sublime_text']['checksum_32bit']
end
