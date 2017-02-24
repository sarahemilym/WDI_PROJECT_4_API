class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:spotify]

  def index
    @users = User.all
    render json: @users
  end

  def spotify
    @user = User.find_by_email(params[:email])
    if @user
      render json: { id: @user.id }, status: :ok
    else
      render json: {}, status: 404
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :id, :first_name, :last_name, :spotify_id, :username)
    end

end
