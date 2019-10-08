class School

    attr_accessor :name, :roster

    def initialize(name)
        @name   = name
        @roster = {}
    end

    def add_student(student_name, grade)
        
        if @roster[grade]==nil
            @roster[grade]=[]
        end
        
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        #@roster.sort.to_h

        @roster.map do |grade, students|
            @roster[grade]=students.sort
        end

        @roster
    end

end
