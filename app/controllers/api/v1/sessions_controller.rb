class Api::V1::SessionsController < ApplicationController
  before_action :set_api_v1_session, only: [:show, :update, :destroy]

  # GET /api/v1/sessions
  def index
    @api_v1_sessions = Api::V1::Session.all

    render json: @api_v1_sessions
  end

  # GET /api/v1/sessions/1
  def show
    render json: @api_v1_session
  end

  # POST /api/v1/sessions
  def create
    @api_v1_session = Api::V1::Session.new(api_v1_session_params)

    if @api_v1_session.save
      render json: @api_v1_session, status: :created, location: @api_v1_session
    else
      render json: @api_v1_session.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/sessions/1
  def update
    if @api_v1_session.update(api_v1_session_params)
      render json: @api_v1_session
    else
      render json: @api_v1_session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/sessions/1
  def destroy
    @api_v1_session.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_session
      @api_v1_session = Api::V1::Session.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_session_params
      params.fetch(:api_v1_session, {})
    end
end
