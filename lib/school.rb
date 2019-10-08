class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, age)
    if @roster.keys.include?(age)
      @roster[age] << name
    else
      @roster[age] = []
      @roster[age] << name
    end
  end

  def grade(age)
    @roster[age]
  end

  def sort
    @roster.map{|grades, students| @roster[grades] = students.sort}
    @roster
  end
end