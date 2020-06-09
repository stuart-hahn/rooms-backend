class SessionsController < ApplicationController
  def login
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user), status: :ok
    else
      render json: { error: "Invalid credentials" }, status: :unauthorized
    end
  end

  def logout
    reset_session
    render json: { message: "Successfully logged out" }, status: :ok
  end

  def get_current_user
    if logged_in?
      render json: UserSerializer.new(current_user), status: :ok
    else
      render json: { message: "No one is logged in" }, status: :unauthorized
    end
  end
end
