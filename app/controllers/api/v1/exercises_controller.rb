class Api::V1::ExercisesController < ApplicationController

  # # GET /api/v1/exercises
  # def index
  #   @api_v1_exercises = Api::V1::Exercise.all

  #   render json: @api_v1_exercises
  # end

  # GET /api/v1/exercises/1
  def show
    exercise = Exercise.find(params[:id].to_i)
    render json: exercise, serializer: Api::V1::ExerciseSerializer
  end

  # # POST /api/v1/exercises
  # def create
  #   @api_v1_exercise = Api::V1::Exercise.new(api_v1_exercise_params)

  #   if @api_v1_exercise.save
  #     render json: @api_v1_exercise, status: :created, location: @api_v1_exercise
  #   else
  #     render json: @api_v1_exercise.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /api/v1/exercises/1
  # def update
  #   if @api_v1_exercise.update(api_v1_exercise_params)
  #     render json: @api_v1_exercise
  #   else
  #     render json: @api_v1_exercise.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /api/v1/exercises/1
  # def destroy
  #   @api_v1_exercise.destroy
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_api_v1_exercise
  #     @api_v1_exercise = Api::V1::Exercise.find(params[:id])
  #   end

  #   # Only allow a trusted parameter "white list" through.
  #   def api_v1_exercise_params
  #     params.fetch(:api_v1_exercise, {})
  #   end
end
