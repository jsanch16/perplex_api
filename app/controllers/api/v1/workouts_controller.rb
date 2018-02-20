class Api::V1::WorkoutsController < ApplicationController

  # GET /api/v1/workouts
  def index
    workouts = Workout.where(user_id: current_user.id)
    render json: workouts, each_serializer: Api::V1::WorkoutsSerializer
  end

  # GET /api/v1/workouts/1
  def show
    workout = Workout.find(params[:workout_id])
    render json: workout, each_serializer: Api::V1::WorkoutSerializer
  end

  # # POST /api/v1/workouts
  def create
    selected_ids = ExerciseSelector.call(params[:options]).result
    workout = Workout.new(workout_params.merge(exercise_ids: selected_ids))
    if workout.save
      render json: workout, serializer: Api::V1::WorkoutSerializer, status: :created
    else
      render json: workout.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /api/v1/workouts/1
  # def update
  #   if @api_v1_workout.update(workout_params)
  #     render json: @api_v1_workout
  #   else
  #     render json: @api_v1_workout.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /api/v1/workouts/1
  # def destroy
  #   @api_v1_workout.destroy
  # end

  private
    def workout_params
      params.permit(:name, :user_id, exercise_ids: [])
    end
end