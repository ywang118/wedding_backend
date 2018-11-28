class Api::V1::PhotographersController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    before_action :find_photograph, only: [:show]
    def index
      @photographers = Photographer.all
      render json: @photographers, status: 200
    end
    def show
      render json: @photographer, status: 200
    end
    private
    def find_photograph
       @photographer = Photographer.find(params[:id])
    end

end
