class Api::V1::UsersController < ApplicationController
  respond_to :json
  # GET /api/v1/users
  def index
    users = User.all

    render json: users
  end

  # GET /api/v1/users/1
  def show
    respond_with User.find(params[:id])
    # user = User.find(params[:id])
    # render json: user
  end

  # POST /api/v1/users
  def create
    user = User.new(user_params)

    if user.save
      render json: user, status: :created, location: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/users/1
  def update
    if user.update(user_params)
      render json: user, status: 200
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/users/1
  def destroy
    user.destroy
  end

  private

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
