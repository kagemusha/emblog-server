class PostsController < ApplicationController
  doorkeeper_for :all, except: [:index, :show]

  def index
    if params["type"] == "contributed"
      render json: current_user.posts
      return
    end
    render json: Post.published
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def create
    authorize Post
    post = Post.create permitted_params
    post.author = current_user
    if post.save
      render json: post
    else
      render json: {error: "save failed"}
    end
  end

  def update
    post = Post.find(params[:id])
    authorize post
    post.update! permitted_params
    render json: post
  end

  def destroy
    post = Post.find(params[:id])
    authorize post
    post.destroy
    render json: {}
  end

  def permitted_params
    params.require(:post).permit(:title, :markdown, :html)
  end
end
