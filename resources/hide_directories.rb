actions :hide, :create
default_action :hide

attribute :directories, :kind_of => [Array, Hash], :name_attribute => true

def initialize(name, run_context=nil)
  super
  @action = :create
end