class CommentsController < ApplicationController
  before_action :set_post

   def index
    @comments = Comment.all
  end

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      flash[:alert] = "Your comment could not be created. Check the form."
      render root_path
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      flash[:success] = 'Your Comment Has Been deleted.'
      redirect_to root_path
    end

  end

  private

  def comment_params  
    params.require(:comment).permit(:content)
  end

  def set_post  
    @post = Post.find(params[:post_id])
  end  
end



