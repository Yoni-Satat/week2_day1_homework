require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportTeam < MiniTest::Test
  @sport_team

  def setup
    @players = ['Michel', 'Jim', 'Sophia']
    @sport_team = SportTeam.new('Liverpool', @players, 'Yoni' )
  end

  def test_team_name
    assert_equal('Liverpool', @sport_team.team_name)
  end

  def test_players
    assert_equal(@players, @sport_team.players)
  end

  def test_coach
    assert_equal('Yoni', @sport_team.coach)
  end

  def test_set_coach
    @sport_team.coach = 'Sandy'
    assert_equal('Sandy', @sport_team.coach)
  end

  def test_add_player
    @sport_team.add_player('Andre')
    result = @sport_team.players
    assert_equal(['Michel', 'Jim', 'Sophia', 'Andre'], result)
  end

  def test_if_player_in_array
    assert_equal('Jim', @sport_team.if_player_in_array('Jim'))
  end







end
