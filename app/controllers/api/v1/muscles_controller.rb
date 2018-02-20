class Api::V1::MusclesController < ApplicationController

  # GET /api/v1/muscles
  def index
    params[:muscle_group_id]
    muscles = Muscle.where(muscle_group_id: muscle_group_id)
    render json: muscles
  end

  # GET /api/v1/muscles/1
  def show
    render json: @api_v1_muscle
  end

  # # POST /api/v1/muscles
  # def create
  #   @api_v1_muscle = Api::V1::Muscle.new(api_v1_muscle_params)

  #   if @api_v1_muscle.save
  #     render json: @api_v1_muscle, status: :created, location: @api_v1_muscle
  #   else
  #     render json: @api_v1_muscle.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /api/v1/muscles/1
  # def update
  #   if @api_v1_muscle.update(api_v1_muscle_params)
  #     render json: @api_v1_muscle
  #   else
  #     render json: @api_v1_muscle.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /api/v1/muscles/1
  # def destroy
  #   @api_v1_muscle.destroy
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_api_v1_muscle
  #     @api_v1_muscle = Api::V1::Muscle.find(params[:id])
  #   end

  #   # Only allow a trusted parameter "white list" through.
  #   def api_v1_muscle_params
  #     params.fetch(:api_v1_muscle, {})
  #   end
end
