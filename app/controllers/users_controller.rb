class UsersController < ApplicationController
  before_action :authenticate, except: [:create]
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
    def show
      user = User.find_by(email: params[:email])
      jwt = Auth.issue({user_id: user.id})
      render json: {jwt: jwt, user_id: user.id, user_email: user.email, user_first_name: user.first_name}
    end
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
