class School
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def name
    @name
  end 

  def roster
    @roster
  end

  def add_student(name, grade)
    #@roster[grade] = []
    if @roster.include?(grade)
       @roster[grade] += [name]
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster.include? (grade)
    return @roster[grade]
  end
  
  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end