class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  def index
    @posts = Post.all
  end

  def show ;end

  def new
    @post = Post.new
  end

  def edit ;end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path, notice: t('defaults.message.created',item: Post.model_name.human)
    else
      flash.now[:alert] =  t('defaults.message.not_created',item: Post.model_name.human)
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post), notice: t('defaults.message.updated',item: Post.model_name.human)
    else
      flash.now[:alert] = t('defaults.message.not_updated',item: Post.model_name.human)
      render :edit
    end
  end

  def destroy
    @post.destroy!
    redirect_to posts_path, notice: t('defaults.message.deleted',item: Post.model_name.human)
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body, :url, :contributor)
    end
end
