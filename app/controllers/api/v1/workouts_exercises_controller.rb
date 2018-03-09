class Api::V1::WorkoutsExercisesController < ApplicationController

  # PATCH/PUT /api/v1/workouts_exercises/1
  def update
    workouts_exercise = WorkoutsExercise.find(params[:id])
    params[:exercise_id] = ExerciseSwap.call(workouts_exercise.selection_type).result
    if workouts_exercise.update(workouts_exercise_params)
      render json: workouts_exercise.workout, serializer: Api::V1::WorkoutSerializer
    else
      render json: workouts_exercise.errors, status: :unprocessable_entity
    end
  end

  private
    def workouts_exercise_params
      params.permit(:exercise_id, :workout_id, :selection_type)
    end
end
