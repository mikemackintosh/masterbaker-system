#unless node['system']['login_window_message'].nil?
  mac_os_x_userdefaults "Setting login screen message" do
    domain "/Library/Preferences/com.apple.loginwindow"
    key "LoginwindowText"
    type "string"
    value node['system']['login_window_message']['login_window_message']
  end
#end
