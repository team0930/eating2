class CommentsController < ApplicationController

  def create
    restaurant = Restaurant.find(params[:restaurant_id])
    comment = restaurant.comments.new(comment_params)
    comment.user_id = current_user.id
    comment.star = params[:review][:star]
    #byebug
    comment.save!
    redirect_to request.referer
  end

  def destroy
    Comment.find_by(id: params[:id], restaurant_id: params[:restaurant_id]).destroy
    redirect_to request.referer
  end

  def comment_params
    params.require(:comment).permit(:title, :content, :image)
  end
end
