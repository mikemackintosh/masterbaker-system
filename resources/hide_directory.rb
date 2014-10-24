actions :create

attribute :directory, :kind_of => [Array, Hash], :name_attribute => true

def initialize(name, run_context=nil)
  super
  @action = :create
end