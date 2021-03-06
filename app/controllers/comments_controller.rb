class CommentsController < ApplicationController

  def index
    @post = Post.find params[:post_id]
    @comments = @post.comments
  end

  def new
    @post = Post.find params[:post_id]
    @comment = @post.comments.new
  end

  def create
    @post = Post.find params[:post_id]
    @comment = @post.comments.new comment_params

    if @comment.save
      redirect_to post_comments_path(@post), flash: { success: "Successfully Created" }
    else
      flash[:error] = "Please fill in required fields"
      render :new
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end

end
