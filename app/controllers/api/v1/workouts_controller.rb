class Api::V1::WorkoutsController < ApplicationController

  # GET /api/v1/workouts
  def index
    workouts = current_user.workouts
    render json: workouts, each_serializer: Api::V1::WorkoutsSerializer
  end

  # GET /api/v1/workouts/1
  def show
    workout = Workout.find(params[:workout_id])
    render json: workout, serializer: Api::V1::WorkoutSerializer
  end

  # # POST /api/v1/workouts
  def create
    selected_exercises = ExerciseSelector.call(params[:selections]).result
    params[:workouts_exercises_attributes] = selected_exercises
    workout = current_user.workouts.build(workout_params.merge(date: Time.now))
    if workout.save
      render json: workout, serializer: Api::V1::WorkoutSerializer, status: :created
    else
      render json: workout.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /api/v1/workouts/1
  def update
    if params[:exercise_id]
      render json: @api_v1_workout
    else
      render json: @api_v1_workout.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /api/v1/workouts/1
  # def destroy
  #   @api_v1_workout.destroy
  # end

  private
    def workout_params
      params.permit(:name, :user_id, :date, workouts_exercises_attributes: [:selection_type, :exercise_id])
    end
end