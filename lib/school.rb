class School

  attr_reader :name
  attr_accessor :roster

  def initialize(name, roster = {})
    #placeholder for information to populate
    @name = name
    @roster = roster
    #assinging to variableear
  end

  def add_student(student, grade)
    @student = student
    @grade = grade

    #if associated move on if not associate

    @roster[grade] ||= []
    @roster[grade] << student
# could do dot push meth
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
    students.sort!
    end
  end

end

#def sort
#@roste....
#|sutdent.sort!
#end
