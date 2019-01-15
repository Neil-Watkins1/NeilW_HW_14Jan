require("minitest/autorun")
require("minitest/rg")
require_relative("../team.rb")

class TestTeam < MiniTest::Test

  def test_team_name
    team = Team.new("G11 United", ["Neil", "James"], "John", 0)
    assert_equal("G11 United", team.team_name)
  end

  def test_player
    team = Team.new("G11 United", ["Neil", "James"], "John", 0)
    assert_equal(["Neil", "James"], team.players)
  end

  def test_coach
    team = Team.new("G11 United", ["Neil", "James"], "John", 0)
    assert_equal("John", team.coach)
  end
  def test_chg_coach
    team = Team.new("G11 United", ["Neil", "James"], "John", 0)
    team.coach = ("Colin")
    assert_equal("Colin", team.coach)
  end


  def test_new_players
    team = Team.new("G11 United", ["Neil", "James"], "John", 0)
    team.players[2] = ("Ian")
    assert_equal(["Neil", "James", "Ian"], team.players)


  end


  # def test_check_player(suspect_player)
  #   team = Team.new("G11 United", ["Neil", "James"], "John")
  #   suspect_player = ("Neil")
  #   assert_equal(true, team.players.include?)
  # end
  def test_win_points
    team = Team.new("G11 United", ["Neil", "James"], "John", 0)
    result = ("win")
    assert_equal(1, team.points)
  end



end
