action :hide do
  new_resource.directories.each do |dir| 
    execute "Hiding directory: #{dir}" do
      command "chflags hidden '#{dir}'"
      user node['apps']['current_user']
    end
  end
end

action :show do
  new_resource.directories.each do |dir| 
    execute "Unhiding directory: #{dir}" do
      command "chflags nohidden '#{dir}'"
      user node['apps']['current_user']
    end
  end
end