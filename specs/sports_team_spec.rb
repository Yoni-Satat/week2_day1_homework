require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportTeam < MiniTest::Test
  @sport_team

  def setup
    players = ['Michel', 'Jim', 'Sophia']
    @sport_team = SportTeam.new('Liverpool', players, 'Yoni' )
  end

  def test_team_name
    assert_equal('Liverpool', @sport_team.team_name)
  end







end
