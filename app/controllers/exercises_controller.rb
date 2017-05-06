class ExercisesController < ApplicationController
	def create
		@program = Program.find(params[:program_id])
		@exercise = @program.exercises.create(params[:exercise].permit(:name, :sets, :reps))

		redirect_to program_path(@program)
	end
end
