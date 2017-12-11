class Api::V1::SessionsController < ApplicationController
  skip_before_action :authenticate_request

  # POST /api/v1/sessions
  def create
    command = LoginUser.call(params[:email], params[:password])  

    if command.success?
      render json: { auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  # DELETE /api/v1/sessions/1
  def destroy
    @api_v1_session.destroy
  end

  private

    # Only allow a trusted parameter "white list" through.
    # def session_params
    #   params.fetch(:api_v1_session, {})
    # end
end
