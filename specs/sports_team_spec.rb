require('minitest/autorun')
require('minitest/rg')
require_relative('../soprts_team.rb')

class TestSportTeam < MiniTest::Test
  @sport_team

def setup
  players = ['Michel', 'Jim', 'Sophia']
  @sport_team = SportTeam.new('Liverpool', players, 'Yoni' )
end








end
