class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
      # @microposts = Micropost.all
      # @comment = @microposts.comments
    end
  end

  def show
    #@micropost = Micropost.find_by(id: params[:id])
    # @comment = @micropost.comments
  end

  def help
  end

  def about
  end

  def contact
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_content, :micropost_id)
  end
end
