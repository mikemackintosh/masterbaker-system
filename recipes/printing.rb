# Close the printer app when printing is finished
mac_os_x_userdefaults "Close the printer app when printing is finished" do
  domain 'com.apple.print.PrintingPrefs'
  global true
  key '"Quit When Finished"'
  type "bool"
  value true
end

mac_os_x_userdefaults "Expand File saving dialogs by default" do
  domain 'NSGlobalDomain'
  global true
  key "PMPrintingExpandedStateForPrint"
  type "bool"
  value true
end

mac_os_x_userdefaults "Expand File saving dialogs by default" do
  domain 'NSGlobalDomain'
  global true
  key "PMPrintingExpandedStateForPrint2"
  type "bool"
  value true
end