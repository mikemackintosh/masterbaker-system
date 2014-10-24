# ctrl+opt+cmd+t to toggle between light and dark
mac_os_x_userdefaults "Add toggle for light/dark mode" do
  domain "/Library/Preferences/.GlobalPreferences.plist"
  key "_HIEnableThemeSwitchHotKey"
  type "bool"
  value true
end

reload_app('SystemUIServer')