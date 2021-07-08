class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(age)
    @roster[age]
  end

  def sort
    @roster.map{|grades, students| @roster[grades] = students.sort}
    @roster
  end
end