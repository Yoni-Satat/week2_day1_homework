require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestStudent < MiniTest::Test
  @codeclan_student

  def setup
    @codeclan_student = Student.new('Yoni', 16)
  end

  def test_name
    assert_equal('Yoni', @codeclan_student.name)
  end

  def test_cohort
    assert_equal(16, @codeclan_student.cohort)
  end

  def test_set_name
    @codeclan_student.name = 'Darren'
    assert_equal('Darren', @codeclan_student.name)
  end



end
