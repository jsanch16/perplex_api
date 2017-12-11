class Api::V1::WorkoutsController < ApplicationController

  # GET /api/v1/workouts
  def index
    if params[:user_id]
      workouts = Workout.where(user_id: params[:user_id])
    else
      workouts = Workout.all
    end
    render json: workouts, each_serializer: Api::V1::WorkoutsSerializer
  end

  # GET /api/v1/workouts/1
  def show
    workout = Workout.find(params[:workout_id])
    render json: workout
  end

  # # POST /api/v1/workouts
  # def create
  #   @api_v1_workout = Api::V1::Workout.new(api_v1_workout_params)

  #   if @api_v1_workout.save
  #     render json: @api_v1_workout, status: :created, location: @api_v1_workout
  #   else
  #     render json: @api_v1_workout.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /api/v1/workouts/1
  # def update
  #   if @api_v1_workout.update(api_v1_workout_params)
  #     render json: @api_v1_workout
  #   else
  #     render json: @api_v1_workout.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /api/v1/workouts/1
  # def destroy
  #   @api_v1_workout.destroy
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_api_v1_workout
  #     @api_v1_workout = Api::V1::Workout.find(params[:id])
  #   end

  #   # Only allow a trusted parameter "white list" through.
  #   def api_v1_workout_params
  #     params.fetch(:api_v1_workout, {})
  #   end
end
