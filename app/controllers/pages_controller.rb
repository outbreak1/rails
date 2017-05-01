class PagesController < ApplicationController
  def about
    
  end
  def home
    def index
      @articles = Article.all
    end
  end
end
