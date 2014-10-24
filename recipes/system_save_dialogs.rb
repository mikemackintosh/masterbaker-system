# Expand File saving dialogs by default
mac_os_x_userdefaults "Expand File saving dialogs by default" do
  domain 'NSGlobalDomain'
  global true
  key "NSNavPanelExpandedStateForSaveMode"
  type "bool"
  value true
end

# Don't save to iCloud by default
mac_os_x_userdefaults "Disable swipe between pages" do
  domain 'NSGlobalDomain'
  global true
  key "NSDocumentSaveNewDocumentsToCloud"
  type "bool"
  value false
end