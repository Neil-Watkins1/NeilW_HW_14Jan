class Team

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)

    @team_name = team_name
    @players = players
    @coach = coach
    @points = points


  end

  # def team_name
  #   return @team_name
  # end
  #
  # def team_player
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach_name(name)
  #   @coach = name
  # end
  def new_players
    team.players.push(new_player)
  end

  # def check_player(suspect_player)
  #
  # team.players.include?(suspect_player)

  def win_points(result)
    if result == "win"
      @points += 1
    else
      @points = points
    end


  end
end
