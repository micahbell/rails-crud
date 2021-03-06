class PostsController < ApplicationController

  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      p "*"*80
      redirect_to posts_path
    else
      render :new
  end
end

  private

  def post_params
    params.require(:post).permit(:title, :author, :body)
  end

end
