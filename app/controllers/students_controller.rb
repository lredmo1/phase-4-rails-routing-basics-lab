class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def grades
        render json: Student.order('grade DESC')
    end

    def highest_grade
        student = Student.order('grade DESC').first
        render json: student
    end
end
