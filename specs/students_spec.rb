require("minitest/autorun")
require("minitest/rg")
require_relative("../students.rb")

class TestStudent < MiniTest::Test

# def setup()
#   @student = Student.new("Neil", "G2")
# end

  def test_student_name
    student = Student.new("Neil", "G11")
    assert_equal("Neil", student.student_name)

    # or if using setup method
    # assert_equal("Neil", @student.student_name)

  end

  def test_student_cohort
    student = Student.new("Neil", "G11")
    assert_equal("G11", student.student_cohort)
  end

  def test_set_student_name
    student = Student.new("Neil", "G11")
    student.set_student_name ("Nigel")
    assert_equal("Nigel", student.student_name)
  end

  def test_set_student_cohort
    student = Student.new("Neil", "G11")
    student.set_student_cohort ("G12")
    assert_equal("G12", student.student_cohort)
  end

  def test_student_talks
    student = Student.new("Neil", "G11")
    speech = student.talk()
    assert_equal("I can talk", speech)

  end

  def test_student_language
    student = Student.new("Neil", "G11")
    speech = student.student_language("Ruby")
    assert_equal("I love Ruby", speech)
  end
end
