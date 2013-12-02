class ArticlesController < ApplicationController
  before_filter :load_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
    # Create an empty comment for the comment form
    @comment = Comment.new
  end

  def new
    @article = Article.new
  end

  def create
    if @article = Article.create(article_params)
      redirect_to @article
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update_attributes(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.required(:article).permit(:title, :author, :body)
  end

  def load_article
    @article = Article.find(params[:id])
  end
end
