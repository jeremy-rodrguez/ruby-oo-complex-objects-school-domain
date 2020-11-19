# code here!

class School
    attr_accessor :roster
    def initialize(school)
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade) # AC Slater, 9
        if @roster[grade]
            @roster[grade] << student
        else
            @roster[grade] = [] << student
        end
    end

    def grade(grade_level)
        roster[grade_level]
    end

    def sort
        @roster.each do |key, value|
            value.sort!
        end
    end
end