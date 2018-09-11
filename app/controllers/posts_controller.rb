class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: { data: @posts,status: :success,message: "Post loaded successfully" }
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

end
