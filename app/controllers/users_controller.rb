class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]
  def index
    show
  end

  def create
    user = User.new(user_params)
    if user.save
      jwt = Auth.issue({user_id: user.id})
      render json: {jwt: jwt}
    else
      error_message = user.errors.messages.map {|key, value| key.to_s + ": " + value.join(', ')}.join(', ')
      render json: {error: error_message}
    end
  end

  def show
    render json: {what:"butt"}
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
