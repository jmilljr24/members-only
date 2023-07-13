class PostsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @post = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
