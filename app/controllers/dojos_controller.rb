class DojosController < ApplicationController
  
  def index
    @dojo = Dojo.all
  end

  def new
    @dojo = Dojo.new
  end

  def create
    @dojo = Dojo.new( dojo_params )
    if @dojo.save
      flash[:success] = "You have successfully created a new Dojo!"
      redirect_to '/dojos'
    else
      render :new
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
    @students = Dojo.find(params[:id]).students
  end
  
  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id])
      if @dojo.update( dojo_params )
        flash[:success] = "You have successfully created a new Dojo!"
        redirect_to :back
      else
        flash[:errors] = @dojo.errors.full_messages
        redirect_to :back
      end
  end

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to '/dojos'
  end

  private 
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
  end
