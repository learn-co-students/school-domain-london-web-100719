require "pry"

class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade

        roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.sort_by do |grade, students_array|
            @roster[grade] = students_array.sort
        end
    end
    
end