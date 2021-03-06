action :hide do
  new_resource.directories.each do |dir| 
    toggle_flag(dir, "hidden")
  end
end

action :show do
  new_resource.directories.each do |dir| 
    toggle_flag(dir, "nohidden")
  end
end

def toggle_flag(dir, flag)
  unless dir.nil?

    if dir.include? ' '
      dir = dir.gsub(' ', '\ ')
    end
    
    if ::File.exists? ::File.expand_path('~/exists')
      execute "Unhiding directory: #{dir}" do
        command "chflags #{flag} #{dir}"
        user node['system']['current_user']
      end
    end
  end
end