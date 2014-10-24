class Chef::Recipe
  def reload
  	apps [ "Activity Monitor", "Address Book", "Calendar", "Contacts", "cfprefsd",
		"Dock", "Finder", "Mail", "Messages", "Safari", "SystemUIServer",
		"Terminal", "Transmission"]

  	execute "Deleting Dock Cache" do
      command 'find ~/Library/Application\ Support/Dock -name "*.db" -maxdepth 1 -delete'
      user node['current_user']
    end
	
  	apps.each do |app|
  		reload_ui_for(app)
  	end

  end

  def reload_app(application_name)
  	if application_name.eql?(application_name)
	  	execute "Deleting Dock Cache" do
	      command 'find ~/Library/Application\ Support/Dock -name "*.db" -maxdepth 1 -delete'
	      user node['current_user']
	    end
  	end

  	execute "Reloading #{application_name} " do
      command "killall '#{application_name}' > /dev/null 2>&1"
      user node['current_user']
    end
  end

end