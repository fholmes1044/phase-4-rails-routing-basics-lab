class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        students = Student.all 
        grades = students.sort_by { |s| s.grade }
        render json: grades.reverse
    end

    def highest_grade
        students = Student.all 
        grades = students.sort_by { |s| s.grade }.reverse
        # r = grades.reverse
        render json: grades.first
       
    end
end
