class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_current_action

  def index
    @posts =  Post.order(updated_at: :desc).page(params[:page])
  end

  def my_posts
    @posts = Post.where(user_id: current_user.id).order(updated_at: :desc).page(params[:page])
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.order(updated_at: :desc).page(params[:page])
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
    @user = current_user
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render 'edit',  status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path
    else
      render 'show', status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_current_action
    @current_controller = controller_name
    @current_action = action_name
  end
end
