mac_os_x_userdefaults "Disable swipe between pages" do
  domain 'NSGlobalDomain'
  global true
  key "AppleEnableSwipeNavigateWithScrolls"
  value 0
end

mac_os_x_userdefaults "Don't create .DS_store on network volumes" do
  domain 'com.apple.desktopservices'
  global true
  key "DSDontWriteNetworkStores"
  type "bool"
  value "true"
end

mac_os_x_userdefaults "Tell TimeMachine to stop asking to use new disks for backup, NO" do
  domain 'com.apple.TimeMachine'
  global true
  key "DoNotOfferNewDisksForBackup"
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

# Close the printer app when printing is finished
mac_os_x_userdefaults "Close the printer app when printing is finished" do
  domain 'com.apple.print.PrintingPrefs'
  global true
  key '"Quit When Finished"'
  type "bool"
  value true
end

# Don't save items to icloud by default
mac_os_x_userdefaults "Don't save documents to icloud by default" do
  domain 'NSGlobalDomain'
  global true
  key 'NSDocumentSaveNewDocumentsToCloud'
  type "bool"
  value false
end

# You can hide directories of you want
unless node['system']['hide_directories'].nil?
	system_hide_directories node['system']['hide_directories'] do 
		action :hide
	end
end
