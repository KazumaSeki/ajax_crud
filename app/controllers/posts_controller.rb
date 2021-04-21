class PostsController < ApplicationController
  before_action :set_post, only: %i[destroy edit update]

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.create!(post_params)
  end

  def edit
  end

  def update
    @post.update!(post_params)
  end

  def destroy
    @post.destroy!
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
