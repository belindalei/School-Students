class SchoolsController < ApplicationController
  def index
    @schools = School.all
    # @students = Student.search(params[:term])
  end

  def show
    @school = School.find(params[:id])
  end
    # @students = Student.all  #@school.students => array of all the students due the ActiveRecord using the has many/belongs to relationship
  def search
    school = School.find(params[:id]) #tells you which school you're in
    @students = school.search(params[:search]) 
  end

end

