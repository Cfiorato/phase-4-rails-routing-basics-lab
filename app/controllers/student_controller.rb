class StudentController < ApplicationController
  def index 
    students = Student.all 
    render json: students
  end

  def grades  
    students = Student.all.order(grade: :desc)
    render json: students
  end

  def highest_grade
    students = Student.all.order(grade: :desc).limit(1)
    render json: students[0]
  end
end
