class CommentsController < ApplicationController
  before_filter :load_article

  def create
    @article.comments.create(comment_params)
    redirect_to @article
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to @article
  end

  private

  def comment_params
    params.required(:comment).permit(:author, :body)
  end

  def load_article
    @article = Article.find(params[:article_id])
  end
end
