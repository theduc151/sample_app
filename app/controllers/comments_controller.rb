class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: { message: "Comment created successfully", comment: comment }
    else
      render json: :unprocessable_entity, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_content, :micropost_id)
  end
end
