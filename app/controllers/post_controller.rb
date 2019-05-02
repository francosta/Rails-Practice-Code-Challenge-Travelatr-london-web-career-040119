class PostController < ApplicationController
  def index
  end

  def show
    @post = Post.find(params[:id])
  end

  def increase_like
    @post = Post.find(params[:id])
    @post.likes =+ 1
    redirect_to post_path(@post)
  end
end
