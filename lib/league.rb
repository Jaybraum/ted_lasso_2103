class League
  attr_reader :name,
              :teams
  def initialize(name)
    @name = name
    @teams = []
  end

  def add_team(team)
    @teams << team
  end

  def captains
    teams = []
    @teams.each do |team|
      teams << team.players
    end
    teams.max_by do |player|
        player.salary
    end
  end



  def players_by_team
    players_by = {}
    team = ""
    players
    @teams.each do |team|
      team.players
    end
    players
  end


end
