class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
  end

  def show
    @post = Post.find(params[:id])
    @users = User.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(user_id: current_user.id, content: params[:post][:content])

    if @post.save
      redirect_to "/posts"
    else
      render :new, status: :unprocessable_entity
    end
  end

end
