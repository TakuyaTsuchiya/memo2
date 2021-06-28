class PostsController < ApplicationController
  def create
    Post.create(params.require(:post).permit(:content))
    redirect_to root_path
  end
end
