class Team
  attr_reader :name,
              :coach,
              :players
  def initialize(name, coach, players)
    @name = name
    @coach = coach
    @players = players
  end

  def total_salary
    total = []
    @players.each do |player|
      total << player.salary
    end
    total.sum
  end

  def captain
    @players.max_by do |player|
      player.salary
    end.name
  end

  def poisitons_filled
    positions = []
    @players.each do |player|
      positions << player.position
    end
    positions
  end
end
