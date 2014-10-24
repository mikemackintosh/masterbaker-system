action :create do
  directories  = new_resource.directories

  directories.each do |dir| 
    execute "Hiding directory: #{dir}" do
      command "chflags hidden #{dir}"
      user node['apps']['current_user']
    end
  end
end