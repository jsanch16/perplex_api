class Api::V1::WorkoutsExercisesController < ApplicationController

  # GET /api/v1/workouts_exercises
  def index
    @api_v1_workouts_exercises = Api::V1::WorkoutsExercise.all

    render json: @api_v1_workouts_exercises
  end

  # GET /api/v1/workouts_exercises/1
  def show
    render json: @api_v1_workouts_exercise
  end

  # POST /api/v1/workouts_exercises
  # def create
  #   @api_v1_workouts_exercise = Api::V1::WorkoutsExercise.new(api_v1_workouts_exercise_params)
  #   if params[:workout_id]
  # end

  # PATCH/PUT /api/v1/workouts_exercises/1
  def update
    if @api_v1_workouts_exercise.update(api_v1_workouts_exercise_params)
      render json: @api_v1_workouts_exercise
    else
      render json: @api_v1_workouts_exercise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/workouts_exercises/1
  def destroy
    @api_v1_workouts_exercise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_workouts_exercise
      @api_v1_workouts_exercise = Api::V1::WorkoutsExercise.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_workouts_exercise_params
      params.fetch(:api_v1_workouts_exercise, {})
    end
end
