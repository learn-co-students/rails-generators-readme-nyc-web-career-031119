class PostsController < ApplicationController
  before_action :this_post, only: [:edit, :update, :show]

  def index
  	@posts = Post.all
  end

  def show
  end

  def new
  	@post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post)
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def edit
  end

  private

  def this_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end

end
