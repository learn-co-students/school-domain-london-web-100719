class School
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(num)
        @roster[num]
    end

    def sort
        sorted = {}
        sorted =  sorted.merge(@roster)
        sorted.each do |grade, names|
            sorted[grade] = names.sort
            sorted = {grade => sorted[grade]}
        end
    end
end