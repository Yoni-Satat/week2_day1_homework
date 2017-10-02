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
    @codeclan_student.set_name('Darren')
    assert_equal('Darren', @codeclan_student.name)
  end

  def test_set_cohort
    @codeclan_student.set_cohort(10)
    assert_equal(10, @codeclan_student.cohort)
  end

  def test_student_can_talk
    result = @codeclan_student.student_can_talk("I can talk")
    assert_equal("I can talk", result )
  end

  def test_favourite_language
    result = @codeclan_student.favourite_language("Ruby")
    assert_equal("I love Ruby" , result)
  end



end
