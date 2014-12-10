include_recipe "system::updates"
include_recipe "system::printing"
include_recipe "system::timemachine"
include_recipe "system::system_save_dialogs"
include_recipe "system::toggle_lightdark_mode"

mac_os_x_userdefaults "Disable swipe between pages" do
  domain 'NSGlobalDomain'
  global true
  key "AppleEnableSwipeNavigateWithScrolls"
  type "bool"
  value "false"
 #end

mac_os_x_userdefaults "Don't create .DS_store on network volumes" do
  domain 'com.apple.desktopservices'
  global true
  key "DSDontWriteNetworkStores"
  type "bool"
  value "true"
end

mac_os_x_userdefaults "Make resizing happen faster" do
  domain 'NSGlobalDomain'
  global true
  key "NSWindowResizeTime"
  type "float"
  value "0.001"
end

# You can hide directories of you want
unless node['system']['hide_directories'].nil?
	system_hide_directories "hide" do 
		directories node['system']['hide_directories']
	end
end
