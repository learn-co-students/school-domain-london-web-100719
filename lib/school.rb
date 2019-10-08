require "pry"

class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end
    

    def add_student(name,grade)
        
        if roster[grade]
        roster[grade] << name
        else 
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted= roster.sort
        sorted.each {|element| element[1] = element[1].sort}
        sorted.to_h
        
    end
end

