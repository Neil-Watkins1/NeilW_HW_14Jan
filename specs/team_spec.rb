require("minitest/autorun")
require("minitest/rg")
require_relative("../team.rb")

class TestTeam < MiniTest::Test

  #   def setup()
  # @players = ["Neil", "James"]
  # @team = Team.new("G11 United", [@players, "John", 0)
  # end

  def test_team_name
    team = Team.new("G11 United", ["Neil", "James"], "John")
    assert_equal("G11 United", team.team_name)
  end

  def test_player
    team = Team.new("G11 United", ["Neil", "James"], "John")
    assert_equal(["Neil", "James"], team.players)
  end

  def test_coach
    team = Team.new("G11 United", ["Neil", "James"], "John")
    assert_equal("John", team.coach)
  end
  def test_chg_coach
    team = Team.new("G11 United", ["Neil", "James"], "John")
    team.coach = "Colin"
    assert_equal("Colin", team.coach)
  end


  def test_add_player
    team = Team.new("G11 United", ["Neil", "James"], "John")
    expected = 3
    team.add_player("Ian")
    assert_equal(expected, team.players.length)


  end


  def test_player_in_team
    team = Team.new("G11 United", ["Neil", "James"], "John")
    in_team = team.player_in_team("Neil")
    assert_equal(true, in_team)
  end

  def test_update_points
    team = Team.new("G11 United", ["Neil", "James"], "John")
    team.updates_points("win")
    assert_equal(1, team.points)
  end
  


end
