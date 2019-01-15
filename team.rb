class Team

  attr_accessor :team_name, :players, :coach, :points

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
  def add_player(new_player)
    @players.push(new_player)
  end

  def player_in_team(player_to_find)
    return@players.include? player_to_find
  end

  def updates_points(result)
    if result == "win"
      @points += 1

    end


  end
end
