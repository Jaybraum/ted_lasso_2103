class Player
  attr_reader :name,
              :position,
              :salary
  def initialize(name:name, position:position, salary:salary)
    @name = name
    @position = position
    @salary = salary
  end
end
