require 'pry'

class School

    attr_accessor 
    attr_reader :roster

    def initialize(roster)
        @roster = {}
    end

    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_list = {}
        roster.each {|g, s| sorted_list[g] = s.sort}
        sorted_list
    end

end
