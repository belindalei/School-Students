class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
    @schools = School.all
  end

  def new  
    @student = Student.new #HTTP is stateless. Dumps out what was around before
    @schools = School.all 
  end

  def create
    student = Student.create(student_params)
    redirect_to student_path(student.id)
  end 

  def update 
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to student_path(student.id) 
  end

  def destroy 
    student = Student.find(params[:id])
    student.destroy
    redirect_to students_path
  end

  private 

  def student_params
    params.require(:student).permit(:name, :age, :school_id, :search)
  end

end
