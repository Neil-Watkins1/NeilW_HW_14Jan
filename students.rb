class Student

  # attr_accessor :student_name, :cohort

  def initialize(student_name, student_cohort)

    @student_name = student_name
    @student_cohort = student_cohort
  end

  def student_name()
    return @student_name
  end

  def student_cohort()
    return @student_cohort
  end

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_student_cohort(new_cohort)
    @student_cohort = new_cohort

  end

  def talk()

      return "I can talk"
    end

    def student_language(favourite)
      return "I love #{favourite}"
    end
  end
