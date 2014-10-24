actions :hide, :show
default_action :hide

attribute :action, :kind_of => String, :name_attribute => true
attribute :directories, :kind_of => [Array, Hash]