class Api::V1::CommentsController < ApplicationController
  skip_before_action :authorized, only: [:index,:create,:destroy]
  def index
    comments = Comment.all
   render json: comments
  end

  def create
   @comment = Comment.find_by(comment_params)

   if @comment
     @comment = {found: true}
   else
     @comment = Comment.create(comment_params)
   end

   render json: @comment, status: :ok
 end

 def destroy
   @comment = Comment.find(params[:id])
   @comment.destroy

   render json: @comment, status: :ok
 end

 private
 def comment_params
   params.require(:comment).permit(:user_id, :photographer_id, :date, :description)
 end
 end
