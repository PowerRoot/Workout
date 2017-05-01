class ProgramsController < ApplicationController
  before_action :find_program, only: [:show, :edit, :update, :destroy]
  def index
    @programs = Program.all.order("created_at DESC")
  end

  def show
  end

  def new                                     
  	@program = Program.new
  end

  def create
  	@program = Program.new(program_params)
  	if @program.save
  		redirect_to @program
  	else
  		render 'new'
  	end
  end

  def edit

  end       

  def update
    if @program.update(program_params)
      redirect_to @program
    else
      render 'edit'
    end
  end

  def destroy
    @program.destroy
    redirect_to root_path
  end

  private

  def program_params
  	params.require(:program).permit(:data, :workout, :mood, :length)
  end

  def find_program
    @program = Program.find(params[:id])
  end
end
