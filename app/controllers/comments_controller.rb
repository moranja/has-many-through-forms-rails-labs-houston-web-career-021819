class CommentsController < ApplicationController

  def create
    if comment_params(user_attributes: [:username])[:user_attributes][:username] == ''
      comment = Comment.create(comment_params(:content, :post_id, :user_id))
    else
      comment = Comment.create(comment_params(:content, :post_id, user_attributes: [:username, :email]))
    end
    redirect_to comment.post
  end

  private

  def comment_params(*args)
    params.require(:comment).permit(*args)
  end
end
