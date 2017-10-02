class SportTeam
  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach(coach)
  #   @coach = coach
  # end
  def add_player(name)
    self.players.push(name)
  end

  def if_player_in_array(name)
    if self.players.include?(name)
      return name
    end
  end

  def team_points(won_lost)
    if(won_lost == "win")
      @points += 1
    else
      @points = @points
  end
end

end
