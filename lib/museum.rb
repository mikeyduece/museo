class Museum
  attr_reader :id,
              :name

  def initialize(arguments=nil)
    @id   = arguments[:id]
    @name = arguments[:name]
  end
end
