require "pry"

class School

    def initialize(name)
        @name = name
    end
   
    def roster
        @roster = {}
    end

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade

        @roster[grade] ||= [student_name]
        @roster[grade] << student_name
    end

    # def grade(grade)
    #     @roster[grade]
    # end

    # def sort
    #     @roster.sort_by_value
    # end
    
end