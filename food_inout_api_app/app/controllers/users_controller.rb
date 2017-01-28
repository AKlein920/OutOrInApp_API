class UsersController < ApplicationController

  def index
    users = User.all
    render json: {users: users, status: 200}
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: {status: 'User created!'}, status: 200
    else
      render json: {errors: user.errors.full_messages}, status: 400
    end
  end

  def login
    user = User.find_by(email: params[:email].to_s.downcase)
    if user && user.authenticate(params[:password])
      auth_token = JsonWebToken.encode({user_id: user.id})
      render json: {auth_token: auth_token}, status: :ok
    else
      render json: {error: 'Invalid username / password'}, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
