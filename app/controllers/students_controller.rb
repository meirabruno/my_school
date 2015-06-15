class StudentsController < ApplicationController

  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student, notice: 'Cadastrado com sucesso'
    else
      render action: :new
    end
  end

  def update    
  end

  def destroy
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :registration, :status)
  end
  
end