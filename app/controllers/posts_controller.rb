class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create

    @post = Post.create(params.require(:post).permit(:title, :body))
    @post.user_id = sessions[:user_id]
    redirect_to @user
  end

  def new
  end
end
