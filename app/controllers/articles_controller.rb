class ArticlesController < ApplicationController
  def new
    @article = Article.new(params[:article])

    @article.save
    redirect_to @article
  end

  def create
    render plain: params[:article].inspect
  end
end
