
class School 
    attr_reader :name
    attr_accessor :roster

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(student, grade)
        @student = student
        @grade = grade

        @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, student|
            student.sort!
        end
    end
    
end 