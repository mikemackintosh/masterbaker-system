package 'wget' do
    action :install
end

package "ssh-copy-id" do
    action :install
end

package 'git' do
    action :install
end
