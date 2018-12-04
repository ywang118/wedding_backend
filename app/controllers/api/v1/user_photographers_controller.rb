class Api::V1::UserPhotographersController < ApplicationController
  skip_before_action :authorized, only: [:index,:create,:destroy]

  def index
    @user_photographers = UserPhotographer.all
   render json: @user_photographers
  end
  def create
  @user_photographer = UserPhotographer.find_by(user_photographer_params)

  if @user_photographer
    @user_photographer = {found: true}
  else
    @user_photographer = UserPhotographer.create(user_photographer_params)
  end

  render json: @user_photographer, status: :ok
end

def destroy
  @user_photographer = UserPhotographer.find(params[:id])
  @user_photographer.destroy

  render json: @user_photographer, status: :ok
end

private
def user_photographer_params
  params.require(:user_photographer).permit(:photographer_id, :user_id)
end
end
