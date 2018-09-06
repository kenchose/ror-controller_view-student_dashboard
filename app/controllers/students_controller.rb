class StudentsController < ApplicationController
  def new
    @student = Student.new
    @dojos = Dojo.all
  	@dojo = Dojo.find(params[:dojo_id])  
  end
  
  def create
    @student = Student.new( student_params )
    # @dojo = Dojo.find(params[:dojo_id])
    # @dojos = Dojo.all
    if @student.save
      flash[:success] = "You have added a new student."
      redirect_to "/dojos/#{params[:dojo_id]}"
    else
      redirect_to '/dojos/'
    end
    # Student.create(student_params)
  	# redirect_to "/dojos/#{params[:dojos_id]}"
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to '/dojos'
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
  end
