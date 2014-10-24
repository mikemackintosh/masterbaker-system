action :hide do
  new_resource.directories.each do |dir| 
    
    if dir.include?('~/')
      throw dir.gsub('~/', node['system']['home'])
    end

    execute "Hiding directory: #{dir}" do
      command "chflags hidden '#{dir}'"
      user node['system']['current_user']
    end
  end
end

action :show do
  new_resource.directories.each do |dir| 
    
    if dir.include?('~/')
      throw dir.gsub('~/', node['system']['home'])
    end
    
    execute "Unhiding directory: #{dir}" do
      command "chflags nohidden '#{dir}'"
      user node['system']['current_user']
    end
  end
end