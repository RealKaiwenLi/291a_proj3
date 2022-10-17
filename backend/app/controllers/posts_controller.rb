class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
  end

  def show
    @post = Post.find(params[:id])
    @users = User.all
  end
end
