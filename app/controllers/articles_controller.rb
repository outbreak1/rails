class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
  end
  def create

    @article = Article.new(article_params)
    @article.save
    redirect_to articles_new(@article)
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
