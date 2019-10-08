# code here!
class School
    def initialize(school)
        @school = school
        @roster = {}
    end

    attr_reader :roster

    def add_student(full_name, grade)
        #if the roster already has a grade, add to the existing array
        if @roster.include?(grade)
            @roster[grade] += [full_name]
        else 
            @roster[grade] = [full_name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, student_array|
            student_array.sort_by!{ |name| name.downcase }
        end
    end
    
end