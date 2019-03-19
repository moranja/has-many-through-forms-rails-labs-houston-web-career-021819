class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @users = @post.uniq_users
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    #byebug
    post = Post.create(post_params(:title, :content))
    self.categories_attributes= post_params(categories_attributes: [:name])
    redirect_to post
  end

  private

  def post_params(*args)
    params.require(:post).permit(*args)
  end
end

# :title, :content, category_ids:[], categories_attributes: [:name]
