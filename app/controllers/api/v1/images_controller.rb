class Api::V1::ImagesController < ApplicationController
  before_action :find_image, only: [:show]
  def index
    @images = Image.all
    render json: @images, status: 200
  end
  def show
    render json: @image, status: 200
  end
  private
  def find_image
     @image = Image.find(params[:id])
  end

end
