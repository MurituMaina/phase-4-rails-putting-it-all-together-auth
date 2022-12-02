class UsersController < ApplicationController
  skip_before_action :authorize, only: :create

  def create
    user = User.create!(user_params)

    session[:user_id] = user.id
    render json: user, status: :created
  end

  def show
    user = User.find(session[:user_id])
    render json: user, status: :created
  end

  private

  def user_params
    params.permit(:username, :image_url, :bio, :password, :password_confirmation)
  end

  # def render_response_not_found
  #   render status: :unauthorized, json: { error: "" }
  # end

end
