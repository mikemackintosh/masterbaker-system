mac_os_x_userdefaults "Tell TimeMachine to stop asking to use new disks for backup, NO" do
  domain 'com.apple.TimeMachine'
  global true
  key "DoNotOfferNewDisksForBackup"
  type "bool"
  value "true"
end