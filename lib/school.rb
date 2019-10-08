require 'pry'

class School

    attr_accessor :roster
    def initialize(name)

        @name = name
        @roster = {}

    end
    

    def add_student(student_name, grade)
        
        roster[grade] ||= []
        roster[grade] << student_name
        
    end

    def grade(grade_number)

        roster[grade_number]
        
    end

    def sort

        roster.sort.to_h
        roster.each do |key, value|
            
            roster[key] = value.sort

        end
        
    end

end