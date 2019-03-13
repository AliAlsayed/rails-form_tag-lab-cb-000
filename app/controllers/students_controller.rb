class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    fail
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to new_student_path
    puts params.inspect
  end 

end
