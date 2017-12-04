class ApplicationController < ActionController::API
  def authenticate_user
    JsonWebToken.decode()
  end
end
