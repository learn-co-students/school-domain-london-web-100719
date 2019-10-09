# code here!
class School
  
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    puts @name
  end
  
  def add_student(student_name, grade)

    if @roster.keys.include?(grade)
      @roster[grade] += [student_name]
    else
      @roster[grade] = [student_name]
    end
    
  end
  
  def grade(grade)
    if !!grade
      @roster[grade]
    end
  end
  
  def sort
    @roster.each {|grade, name| name.sort!}
  end
  
end