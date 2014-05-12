class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def create
    post = Post.create permitted_params
    post.user = current_user
    if post.save
      render json: post
    else
      render json: {error: "save failed"}
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    render json: {}
  end

  def permitted_params
    params.require(:post).permit(:title, :content)
  end
end
